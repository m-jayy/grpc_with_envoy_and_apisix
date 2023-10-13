import 'dart:typed_data';
import 'package:grpc/service_api.dart';
import 'build_channel_mobile.dart'
    if (dart.library.js) './build_channel_web.dart' as channel_builder;

ClientChannel buildGrpcChannel({
  required String host,
  required int port,
  Uint8List? sslCertificate,
  int? grpcClientIdleTimeout,
}) =>
    channel_builder.ChannelBuilder().buildChannel(
      host: host,
      port: port,
      sslCertificate: sslCertificate,
      grpcClientIdleTimeout: grpcClientIdleTimeout,
    );
