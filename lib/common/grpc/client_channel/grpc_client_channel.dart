import 'dart:async';
import 'dart:developer';
import 'dart:io';

import 'package:async/async.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_template/common/constants/constants.dart';
import 'package:flutter_template/common/grpc/grp_channel_build_helper/build_grpc_channel.dart';
import 'package:grpc/grpc.dart';
import 'package:grpc/service_api.dart' as channel;

/// This class is responsible for creating a gRPC [ClientChannel] which can be used to
/// communicate with core services
class GrpcClientChannel {
  GrpcClientChannel._();

  static channel.ClientChannel createClientChannel() {
    Uint8List? sslCertificate;


    return buildGrpcChannel(
      host: AppConstants.host,
      port: AppConstants.port
    );
  }
}
