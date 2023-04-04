#import "HellodestroyPlugin.h"
#if __has_include(<hellodestroy/hellodestroy-Swift.h>)
#import <hellodestroy/hellodestroy-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "hellodestroy-Swift.h"
#endif

@implementation HellodestroyPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftHellodestroyPlugin registerWithRegistrar:registrar];
}
@end
