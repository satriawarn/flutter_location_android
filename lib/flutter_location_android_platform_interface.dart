import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'flutter_location_android_method_channel.dart';

abstract class FlutterLocationAndroidPlatform extends PlatformInterface {
  /// Constructs a FlutterLocationAndroidPlatform.
  FlutterLocationAndroidPlatform() : super(token: _token);

  static final Object _token = Object();

  static FlutterLocationAndroidPlatform _instance = MethodChannelFlutterLocationAndroid();

  /// The default instance of [FlutterLocationAndroidPlatform] to use.
  ///
  /// Defaults to [MethodChannelFlutterLocationAndroid].
  static FlutterLocationAndroidPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FlutterLocationAndroidPlatform] when
  /// they register themselves.
  static set instance(FlutterLocationAndroidPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
