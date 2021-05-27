#import "FluttertckimliknvigovtrPlugin.h"
#if __has_include(<fluttertckimliknvigovtr/fluttertckimliknvigovtr-Swift.h>)
#import <fluttertckimliknvigovtr/fluttertckimliknvigovtr-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "fluttertckimliknvigovtr-Swift.h"
#endif

@implementation FluttertckimliknvigovtrPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFluttertckimliknvigovtrPlugin registerWithRegistrar:registrar];
}
@end
