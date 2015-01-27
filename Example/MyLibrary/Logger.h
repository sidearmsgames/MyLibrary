//
//  Logger.h
//  ShowTracker
//
//  Created by Krzysztof Stachowiak on 26/01/15.
//  Copyright (c) 2015 Ray Wenderlich. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DDLog.h"
#import "DDASLLogger.h"
#import "DDTTYLogger.h"
#import "DDFileLogger.h"

#ifndef ddLogLevel
static const int ddLogLevel = LOG_LEVEL_VERBOSE;
#endif //ddLogLevel

@interface Logger : NSObject
-(void)logMessage: (NSString *) text;
@end
