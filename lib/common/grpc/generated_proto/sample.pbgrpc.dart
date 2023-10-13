//
//  Generated code. Do not modify.
//  source: sample.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'common.pb.dart' as $0;
import 'google/protobuf/empty.pb.dart' as $2;
import 'sampleother.pb.dart' as $1;

export 'sample.pb.dart';

@$pb.GrpcServiceName('global.din.sample.service.SampleServiceExternal')
class SampleServiceExternalClient extends $grpc.Client {
  static final _$getSampleById = $grpc.ClientMethod<$0.IdRequest, $1.SampleResponse>(
      '/global.din.sample.service.SampleServiceExternal/GetSampleById',
      ($0.IdRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.SampleResponse.fromBuffer(value));
  static final _$getSamples = $grpc.ClientMethod<$1.GetSamplesRequest, $1.SamplesResponse>(
      '/global.din.sample.service.SampleServiceExternal/GetSamples',
      ($1.GetSamplesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.SamplesResponse.fromBuffer(value));
  static final _$getIllegalArgumentException = $grpc.ClientMethod<$2.Empty, $2.Empty>(
      '/global.din.sample.service.SampleServiceExternal/GetIllegalArgumentException',
      ($2.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.Empty.fromBuffer(value));

  SampleServiceExternalClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$1.SampleResponse> getSampleById($0.IdRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getSampleById, request, options: options);
  }

  $grpc.ResponseFuture<$1.SamplesResponse> getSamples($1.GetSamplesRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getSamples, request, options: options);
  }

  $grpc.ResponseFuture<$2.Empty> getIllegalArgumentException($2.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getIllegalArgumentException, request, options: options);
  }
}

@$pb.GrpcServiceName('global.din.sample.service.SampleServiceExternal')
abstract class SampleServiceExternalServiceBase extends $grpc.Service {
  $core.String get $name => 'global.din.sample.service.SampleServiceExternal';

  SampleServiceExternalServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.IdRequest, $1.SampleResponse>(
        'GetSampleById',
        getSampleById_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.IdRequest.fromBuffer(value),
        ($1.SampleResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.GetSamplesRequest, $1.SamplesResponse>(
        'GetSamples',
        getSamples_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.GetSamplesRequest.fromBuffer(value),
        ($1.SamplesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.Empty, $2.Empty>(
        'GetIllegalArgumentException',
        getIllegalArgumentException_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.Empty.fromBuffer(value),
        ($2.Empty value) => value.writeToBuffer()));
  }

  $async.Future<$1.SampleResponse> getSampleById_Pre($grpc.ServiceCall call, $async.Future<$0.IdRequest> request) async {
    return getSampleById(call, await request);
  }

  $async.Future<$1.SamplesResponse> getSamples_Pre($grpc.ServiceCall call, $async.Future<$1.GetSamplesRequest> request) async {
    return getSamples(call, await request);
  }

  $async.Future<$2.Empty> getIllegalArgumentException_Pre($grpc.ServiceCall call, $async.Future<$2.Empty> request) async {
    return getIllegalArgumentException(call, await request);
  }

  $async.Future<$1.SampleResponse> getSampleById($grpc.ServiceCall call, $0.IdRequest request);
  $async.Future<$1.SamplesResponse> getSamples($grpc.ServiceCall call, $1.GetSamplesRequest request);
  $async.Future<$2.Empty> getIllegalArgumentException($grpc.ServiceCall call, $2.Empty request);
}
