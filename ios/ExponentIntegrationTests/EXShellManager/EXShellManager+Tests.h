#import "EXShellManager.h"
#import <Foundation/Foundation.h>

@interface EXShellManager (Tests)

- (void)_loadShellConfig:(NSDictionary *)shellConfig
           withInfoPlist:(NSDictionary *)infoPlist
       withExpoKitDevUrl:(NSString *)expoKitDevelopmentUrl
    withEmbeddedManifest:(NSDictionary *)embeddedManifest
              isDetached:(BOOL)isDetached
      isDebugXCodeScheme:(BOOL)isDebugScheme
            isUserDetach:(BOOL)isUserDetach;

@end
