
import 'package:flutter_template/app/app.locator.dart';
import 'package:flutter_template/app/app.logger.dart';
import 'package:flutter_template/common/grpc/generated_proto/helloworld.pbgrpc.dart';
import 'package:grpc/grpc.dart';
import 'package:grpc/service_api.dart' as channel;
import 'package:logger/logger.dart';
import 'package:stacked_services/stacked_services.dart';

class ITestHelloServiceException implements Exception {
  /// One of [StatusCode]
  int code;
  String? message;

  ITestHelloServiceException(
    this.message, [
    this.code = StatusCode.unknown,
  ]);

  @override
  String toString() {
    return message ?? super.toString();
  }
}

/// Customer service using CustomerServiceClient
abstract class ITestHelloService {
  Future<void> helloFromTheOtherSide();
}

class TestHelloService implements ITestHelloService {
  final GreeterClient _client;
  final Logger _logger;
  final snackBar = todoLocator<SnackbarService>();

  /// This has to be a static function inside [AccountService] so it
  /// can passed to [presolveUsing] for service registration
  static Future<TestHelloService> create() async {
    final clientChannel = todoLocator<channel.ClientChannel>();
    final client = GreeterClient(
      clientChannel,
    );
    final service = TestHelloService(client);
    return service;
  }

  TestHelloService(
    GreeterClient client, [
    Logger? logger,
  ])  : _client = client,
        _logger = logger ?? getLogger('testHelloService');

  @override
  Future<void> helloFromTheOtherSide() async {
    try {
      final request = HelloRequest();
      request.name = 'Mohsin Javed';

      await _client.sayHello(request).then(
            (res) => {
              snackBar.showSnackbar(message: res.message),
            },
          );
    } on GrpcError catch (e) {
      _logger.e(e);
      throw ITestHelloServiceException(e.message, e.code);
    }
  }
}
