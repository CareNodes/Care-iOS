//
//  CNNode.h
//  Care
//
//  Created by 0day on 13-9-17.
//  Copyright (c) 2013年 CareNodes. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class CNPerson;

@interface CNNode : NSManagedObject

@property (nonatomic, retain) NSString * nodeId;
@property (nonatomic, retain) NSDate * when;
@property (nonatomic, retain) NSString * what;
@property (nonatomic, retain) NSString * replyToNodeId;
@property (nonatomic, retain) CNPerson *who;
@property (nonatomic, retain) NSSet *caringPeople;
@end

@interface CNNode (CoreDataGeneratedAccessors)

- (void)addCaringPeopleObject:(CNPerson *)value;
- (void)removeCaringPeopleObject:(CNPerson *)value;
- (void)addCaringPeople:(NSSet *)values;
- (void)removeCaringPeople:(NSSet *)values;

@end
