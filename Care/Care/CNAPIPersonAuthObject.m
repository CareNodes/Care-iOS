//
//  CNAPIPersonAuthObject.m
//  Care
//
//  Created by 0day on 13-9-22.
//  Copyright (c) 2013年 CareNodes. All rights reserved.
//

#import "CNAPIPersonAuthObject.h"

@implementation CNAPIPersonAuthObject

- (NSDictionary *)signUpDictionaryValue {
    return @{@"screen_name": self.screenName,
             @"provider": self.provider,
             @"external_id": self.externalId,
             @"password": self.password};
}

- (NSDictionary *)signInDictionaryValue {
    if (self.screenName && self.screenName.length) {
        return @{@"screen_name": self.screenName,
                 @"password": self.password};
    } else if (self.externalId && self.externalId.length) {
        return @{@"provider": self.provider,
                 @"external_id": self.externalId,
                 @"password": self.password};
    } else {
        return nil;
    }
}

@end
