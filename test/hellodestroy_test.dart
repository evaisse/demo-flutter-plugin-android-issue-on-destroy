import 'package:flutter_test/flutter_test.dart';
import 'package:hellodestroy/hellodestroy.dart';
import 'package:hellodestroy/hellodestroy_platform_interface.dart';
import 'package:hellodestroy/hellodestroy_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockHellodestroyPlatform
    with MockPlatformInterfaceMixin
    implements HellodestroyPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final HellodestroyPlatform initialPlatform = HellodestroyPlatform.instance;

  test('$MethodChannelHellodestroy is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelHellodestroy>());
  });

  test('getPlatformVersion', () async {
    Hellodestroy hellodestroyPlugin = Hellodestroy();
    MockHellodestroyPlatform fakePlatform = MockHellodestroyPlatform();
    HellodestroyPlatform.instance = fakePlatform;

    expect(await hellodestroyPlugin.getPlatformVersion(), '42');
  });
}
