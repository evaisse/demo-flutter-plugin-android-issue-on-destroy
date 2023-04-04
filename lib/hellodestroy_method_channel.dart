import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'hellodestroy_platform_interface.dart';

/// An implementation of [HellodestroyPlatform] that uses method channels.
class MethodChannelHellodestroy extends HellodestroyPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('hellodestroy');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
