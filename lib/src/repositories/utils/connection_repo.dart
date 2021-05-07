import 'dart:async';
import 'dart:io';

import 'package:connectivity_plus/connectivity_plus.dart';

class ConnectionRepo {
  static const _lookupDomain = 'google.com';

  final _connectivity = Connectivity();

  Connectivity get connectivity => _connectivity;

  Future<bool> internetLookup() async {
    try {
      final result = await InternetAddress.lookup(_lookupDomain).timeout(
        const Duration(seconds: 20),
      );
      return result.isNotEmpty && result.first.rawAddress.isNotEmpty;
    } on SocketException {
      return false;
    } on TimeoutException {
      return false;
    }
  }
}
