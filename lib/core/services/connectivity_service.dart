import 'dart:async';
import 'dart:io';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:injectable/injectable.dart';

@Singleton()
class ConnectivityService {
  final Connectivity _connectivity;

  ConnectivityService(this._connectivity) {
    checkInternetConnection();
  }

  bool _hasConnection = false;
  ConnectivityResult? connectionMedium;
  StreamController<bool> connectionChangeController = StreamController.broadcast();

  Stream<bool> get connectionChange => connectionChangeController.stream;

  Future<bool> checkInternetConnection() async {
    bool previousConnection = _hasConnection;
    try {
      final result = await InternetAddress.lookup('google.com');
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        _hasConnection = true;
      } else {
        _hasConnection = false;
      }
    } on SocketException catch (_) {
      _hasConnection = false;
    }
    if (previousConnection != _hasConnection) {
      connectionChangeController.add(_hasConnection);
    }
    return _hasConnection;
  }
}
