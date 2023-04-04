import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'hellodestroy_method_channel.dart';

abstract class HellodestroyPlatform extends PlatformInterface {
  /// Constructs a HellodestroyPlatform.
  HellodestroyPlatform() : super(token: _token);

  static final Object _token = Object();

  static HellodestroyPlatform _instance = MethodChannelHellodestroy();

  /// The default instance of [HellodestroyPlatform] to use.
  ///
  /// Defaults to [MethodChannelHellodestroy].
  static HellodestroyPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [HellodestroyPlatform] when
  /// they register themselves.
  static set instance(HellodestroyPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
