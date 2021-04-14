import 'package:connectivity/connectivity.dart';

abstract class INetworkInfo {
  Future<ConnectivityResult> get isConnected;
  Future<bool> get isOverWifi;
  Future<bool> get isOverMobileData;
}

class NetworkInfo implements INetworkInfo {
  final Connectivity connectivity;
  NetworkInfo({required this.connectivity});
  @override
  Future<ConnectivityResult> get isConnected => connectivity.checkConnectivity();
  @override
  Future<bool> get isOverMobileData async => (await connectivity.checkConnectivity()) == ConnectivityResult.mobile;
  @override
  Future<bool> get isOverWifi async => (await connectivity.checkConnectivity()) == ConnectivityResult.wifi;
}
