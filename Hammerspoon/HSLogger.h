//
//  HSLogger.h
//  Hammerspoon
//
//  Created by Chris Jones on 22/01/2018.
//  Copyright © 2018 Hammerspoon. All rights reserved.
//

#import <LuaSkin/LuaSkin.h>

#import "secrets.h"

#ifdef SENTRY_API_URL
#   define HSNSLOG(__FORMAT__, ...) [LuaSkin logBreadcrumb:[NSString stringWithFormat:__FORMAT__, ##__VA_ARGS__]];
#else
#   define HSNSLOG(__FORMAT__, ...) NSLog(__FORMAT__, ##__VA_ARGS__)
#endif

@interface HSLogger : NSObject <LuaSkinDelegate> {
    lua_State *_L;
}

@property (atomic, readonly) lua_State *L;

- (instancetype)initWithLua:(lua_State *)L;
- (void)setLuaState:(lua_State *)L;
- (void) logForLuaSkinAtLevel:(int)level withMessage:(NSString *)theMessage;
- (void)logBreadcrumb:(NSString *)format, ...;
- (void)logKnownBug:(NSString *)format, ...;
@end
