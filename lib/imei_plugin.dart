import 'dart:async';

import 'package:flutter/services.dart';

class ImeiPlugin {
  static const MethodChannel _channel = const MethodChannel('imei_plugin');

  // get imei android device @return String
  static Future<String> getImei({
    bool shouldShowRequestPermissionRationale = false,
    int slotSim = 0
  }) async {
    print("CAri imei");
    final String imei = await _channel.invokeMethod('getImei', { "ssrpr": shouldShowRequestPermissionRationale, "slotsim": slotSim });
    return imei;
  }

  static Future<String> getId() async {
    return await _channel.invokeMethod('getId');
  }
  
}
