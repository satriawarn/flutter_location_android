import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'flutter_location_android_platform_interface.dart';

/// An implementation of [FlutterLocationAndroidPlatform] that uses method channels.
class MethodChannelFlutterLocationAndroid extends FlutterLocationAndroidPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('flutter_location_android');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
