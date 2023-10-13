import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

abstract class NetworkInfoService {
  Future<bool> get isConnected;
}

class NetworkInfoServiceImpl implements NetworkInfoService {
  late final Connectivity connectivity;

  NetworkInfoServiceImpl({Connectivity? checker}) {

      connectivity = checker ?? Connectivity();
  }

  @override
  Future<bool> get isConnected async =>
      await connectivity.checkConnectivity() != ConnectivityResult.none;
}
