
import 'flutter_location_android_platform_interface.dart';
import 'package:flutter/services.dart';

class FlutterLocationAndroid {
  static const MethodChannel _channel = MethodChannel('flutter_location_android');

  /// Returns a map with 'latitude' and 'longitude'
  static Future<Map<String, double>?> getCurrentLocation() async {
    final result = await _channel.invokeMethod('getCurrentLocation');
    if (result != null) {
      return {
        'latitude': result['latitude'],
        'longitude': result['longitude'],
      };
    }
    return null;
  }
}
