#import "FileSaverPlugin.h"
#if __has_include(<at_file_saver/at_file_saver-Swift.h>)
#import <at_file_saver/at_file_saver-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "at_file_saver-Swift.h"
#endif

@implementation FileSaverPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFileSaverPlugin registerWithRegistrar:registrar];
}
@end
