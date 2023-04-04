
import 'hellodestroy_platform_interface.dart';

class Hellodestroy {
  Future<String?> getPlatformVersion() {
    return HellodestroyPlatform.instance.getPlatformVersion();
  }
}
