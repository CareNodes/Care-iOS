//
//  CNAPIEngine.h
//  Care
//
//  Created by 0day on 13-9-17.
//  Copyright (c) 2013年 CareNodes. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CNAPIEngine : NSObject

@property (nonatomic, strong) NSString *userToken;

+ (instancetype)defaultEngine;

@end
