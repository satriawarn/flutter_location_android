import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_location_android/flutter_location_android.dart';
import 'package:flutter_location_android/flutter_location_android_platform_interface.dart';
import 'package:flutter_location_android/flutter_location_android_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFlutterLocationAndroidPlatform
    with MockPlatformInterfaceMixin
    implements FlutterLocationAndroidPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final FlutterLocationAndroidPlatform initialPlatform = FlutterLocationAndroidPlatform.instance;

  test('$MethodChannelFlutterLocationAndroid is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFlutterLocationAndroid>());
  });

  test('getPlatformVersion', () async {
    FlutterLocationAndroid flutterLocationAndroidPlugin = FlutterLocationAndroid();
    MockFlutterLocationAndroidPlatform fakePlatform = MockFlutterLocationAndroidPlatform();
    FlutterLocationAndroidPlatform.instance = fakePlatform;

    expect(await flutterLocationAndroidPlugin.getPlatformVersion(), '42');
  });
}
