import 'dart:async';
import 'dart:io';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:injectable/injectable.dart';

@Singleton()
class ConnectivityService {
  final Connectivity _connectivity;

  ConnectivityService(this._connectivity);

  Stream<bool> get onConnectionChange =>
      _connectivity.onConnectivityChanged.map((event) => _isConnectedToInternet(event));

  bool _isConnectedToInternet(ConnectivityResult event) {
    return event == ConnectivityResult.mobile ||
        event == ConnectivityResult.ethernet ||
        event == ConnectivityResult.mobile;
  }

  Future<bool> checkInternetConnection() async {
    bool hasConnection = false;
    try {
      final result = await InternetAddress.lookup('google.com');
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        hasConnection = true;
      } else {
        hasConnection = false;
      }
    } on SocketException catch (_) {
      hasConnection = false;
    }
    return hasConnection;
  }
}
