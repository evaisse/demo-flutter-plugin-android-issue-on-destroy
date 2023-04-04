import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hellodestroy/hellodestroy_method_channel.dart';

void main() {
  MethodChannelHellodestroy platform = MethodChannelHellodestroy();
  const MethodChannel channel = MethodChannel('hellodestroy');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
