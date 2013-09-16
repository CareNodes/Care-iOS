//
//  CNHomeDataSource.h
//  Care
//
//  Created by 0day on 13-9-17.
//  Copyright (c) 2013年 CareNodes. All rights reserved.
//

#import <Foundation/Foundation.h>

@class CNNode;
@interface CNHomeDataSource : NSObject

- (NSUInteger)numberOfDates;
- (NSUInteger)numberOfNodesForDateAtIndex:(NSUInteger)dateIndex;

- (CNNode *)nodeForIndexPath:(NSIndexPath *)indexPath;

@end
