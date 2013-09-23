//
//  CNAPIEngine.m
//  Care
//
//  Created by 0day on 13-9-17.
//  Copyright (c) 2013年 CareNodes. All rights reserved.
//

#import "CNAPIEngine.h"

@implementation CNAPIEngine

+ (instancetype)defaultEngine {
    static dispatch_once_t onceToken;
    static CNAPIEngine *s_engine = nil;
    dispatch_once(&onceToken, ^{
        s_engine = [[self alloc] init];
    });
    
    return s_engine;
}

- (id)init {
    self = [super init];
    if (self) {
        NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
        NSString *userToken = [userDefaults valueForKey:@"token"];
        self.userToken = userToken;
    }
    
    return self;
}

@end
