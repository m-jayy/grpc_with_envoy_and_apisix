import 'dart:typed_data';

import 'package:flutter_template/common/grpc/grp_channel_build_helper/channel_builder_base.dart';
import 'package:grpc/grpc.dart';
import 'package:grpc/service_api.dart' as api;

class ChannelBuilder extends ChannelBuilderBase {
  @override
  api.ClientChannel buildChannel({
    required String host,
    required int port,
    Uint8List? sslCertificate,
    int? grpcClientIdleTimeout,
  }) {
    final endpoint = '$host:$port';
    return ClientChannel(
      host,
      port: port,
      options: ChannelOptions(
        credentials: ChannelCredentials.secure(
          certificates: sslCertificate,
          onBadCertificate: (certificate, host) => host == endpoint,
        ),
        idleTimeout: Duration(
          minutes: grpcClientIdleTimeout ?? 300,
        ),
      ),
    );
  }
}
