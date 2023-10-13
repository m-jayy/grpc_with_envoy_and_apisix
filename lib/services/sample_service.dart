import 'package:flutter_template/app/app.locator.dart';
import 'package:flutter_template/app/app.logger.dart';
import 'package:flutter_template/common/grpc/generated_proto/common.pb.dart';
import 'package:flutter_template/common/grpc/generated_proto/google/protobuf/empty.pb.dart';
import 'package:flutter_template/common/grpc/generated_proto/google/protobuf/wrappers.pb.dart';
import 'package:flutter_template/common/grpc/generated_proto/sample.pbgrpc.dart';
import 'package:flutter_template/common/grpc/generated_proto/sampleother.pb.dart';
import 'package:grpc/grpc.dart';
import 'package:grpc/service_api.dart' as channel;
import 'package:logger/logger.dart';
import 'package:stacked_services/stacked_services.dart';

class ISampleServiceException implements Exception {
  /// One of [StatusCode]
  int code;
  String? message;

  ISampleServiceException(
    this.message, [
    this.code = StatusCode.unknown,
  ]);

  @override
  String toString() {
    return message ?? super.toString();
  }
}

/// Customer service using CustomerServiceClient
abstract class ISampleService {
  Future<void> getSampleById();

  Future<void> getSampleByIdAwait();

  Future<void> getSamples();

  Future<void> getIllegalArgumentException();
}

class TestSampleService implements ISampleService {
  final SampleServiceExternalClient _client;
  final Logger _logger;
  final snackBar = todoLocator<SnackbarService>();

  /// This has to be a static function inside [AccountService] so it
  /// can passed to [presolveUsing] for service registration
  static Future<TestSampleService> create() async {
    final clientChannel = todoLocator<channel.ClientChannel>();
    final client = SampleServiceExternalClient(
      clientChannel,
    );
    final service = TestSampleService(client);
    return service;
  }

  TestSampleService(
    SampleServiceExternalClient client, [
    Logger? logger,
  ])  : _client = client,
        _logger = logger ?? getLogger('testHelloService');

  @override
  Future<void> getSampleById() async {
    try {
      _logger.d('starting getSampleById');
      await _client.getSampleById(IdRequest(id: '213213')).then(
            (res) => {
              snackBar.showSnackbar(
                message: '${res.info_.messageName} || ${res.sample.id}',
              ),
            },
          );
      _logger.d('end getSampleById');
    } on GrpcError catch (e) {
      _logger.e(e);
      throw ISampleServiceException(e.message, e.code);
    }
  }

  @override
  Future<void> getSampleByIdAwait() async {
    try {
      final awaitedResponse =
          await _client.getSampleById(IdRequest(id: '321312321'));

      snackBar.showSnackbar(
        message:
            '${awaitedResponse.info_.messageName} || ${awaitedResponse.sample.id}',
      );
    } on GrpcError catch (e) {
      _logger.e(e);
      throw ISampleServiceException(e.message, e.code);
    }
  }

  @override
  Future<void> getSamples() async {
    try {
      _logger.d('starting getSamples');
      final req = GetSamplesRequest(
        sampleData: 'test',
        sampleNumber: Int32Value(value: 123),
      );
      final awaitedResponse = await _client.getSamples(req);
      snackBar.showSnackbar(
        message: '${awaitedResponse.toString()}',
      );
      _logger.d('End getSamples');
    } on GrpcError catch (e) {
      _logger.e(e);
      throw ISampleServiceException(e.message, e.code);
    }
  }

  @override
  Future<void> getIllegalArgumentException() async {
    try {
      _logger.d('Starting getIllegalArgumentException');
      final awaitedResponse =
          await _client.getIllegalArgumentException(Empty());
      snackBar.showSnackbar(
        message: awaitedResponse.info_.messageName,
      );
      _logger.d('End getIllegalArgumentException');
    } on GrpcError catch (e) {
      _logger.e(e);
      throw ISampleServiceException(e.message, e.code);
    }
  }
}
