import 'dart:typed_data';

import 'package:flutter_template/common/grpc/grp_channel_build_helper/channel_builder_base.dart';
import 'package:grpc/grpc_web.dart';
import 'package:grpc/service_api.dart' as api;

class ChannelBuilder extends ChannelBuilderBase {
  @override
  api.ClientChannel buildChannel({
    required String host,
    required int port,
    Uint8List? sslCertificate,
    int? grpcClientIdleTimeout,
  }) {
    return GrpcWebClientChannel.xhr(Uri.parse('http://$host:$port'));
  }
}
