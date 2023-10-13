import 'dart:typed_data';
import 'package:grpc/service_api.dart';

abstract class ChannelBuilderBase {
  ClientChannel buildChannel({
    required String host,
    required int port,
    Uint8List? sslCertificate,
    int? grpcClientIdleTimeout,
  });
}
