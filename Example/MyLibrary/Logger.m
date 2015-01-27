//
//  Logger.m
//  ShowTracker
//
//  Created by Krzysztof Stachowiak on 26/01/15.
//  Copyright (c) 2015 Ray Wenderlich. All rights reserved.
//

#import "Logger.h"

@implementation Logger

-(id)init{
    self = [super init];
    
    [DDLog addLogger:[DDASLLogger sharedInstance]];
    [DDLog addLogger:[DDTTYLogger sharedInstance]];
    
    DDFileLogger *fileLogger = [[DDFileLogger alloc] init];
    [DDLog addLogger:fileLogger];
    
    return self;
}

- (void)logMessage: (NSString *) text {
    DDLogVerbose(text);
}

@end
