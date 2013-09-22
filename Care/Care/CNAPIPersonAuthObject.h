//
//  CNAPIPersonAuthObject.h
//  Care
//
//  Created by 0day on 13-9-22.
//  Copyright (c) 2013年 CareNodes. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CNAPIPersonAuthObject : NSObject

@property (nonatomic, strong) NSString *screenName;
@property (nonatomic, strong) NSString *provider;
@property (nonatomic, strong) NSString *externalId;
@property (nonatomic, strong) NSString *password;

- (NSDictionary *)signUpDictionaryValue;
- (NSDictionary *)signInDictionaryValue;

@end
