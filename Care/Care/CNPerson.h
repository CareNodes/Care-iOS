//
//  CNPerson.h
//  Care
//
//  Created by 0day on 13-9-17.
//  Copyright (c) 2013年 CareNodes. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class CNNode;

@interface CNPerson : NSManagedObject

@property (nonatomic, retain) NSString * personId;
@property (nonatomic, retain) NSString * screenName;
@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSString * personDescription;
@property (nonatomic, retain) NSString * avatarURL;
@property (nonatomic, retain) NSDate * createdDate;
@property (nonatomic, retain) NSDate * updatedDate;
@property (nonatomic, retain) NSString * status;
@property (nonatomic, retain) NSString * timezone;
@property (nonatomic, retain) NSString * locale;
@property (nonatomic, retain) NSNumber * followingCount;
@property (nonatomic, retain) NSNumber * followersCount;
@property (nonatomic, retain) NSNumber * nodeCount;
@property (nonatomic, retain) NSString * externalId;
@property (nonatomic, retain) NSString * provider;
@property (nonatomic, retain) NSSet *caringNodes;
@property (nonatomic, retain) NSSet *plantedNodes;
@end

@interface CNPerson (CoreDataGeneratedAccessors)

- (void)addCaringNodesObject:(CNNode *)value;
- (void)removeCaringNodesObject:(CNNode *)value;
- (void)addCaringNodes:(NSSet *)values;
- (void)removeCaringNodes:(NSSet *)values;

- (void)addPlantedNodesObject:(CNNode *)value;
- (void)removePlantedNodesObject:(CNNode *)value;
- (void)addPlantedNodes:(NSSet *)values;
- (void)removePlantedNodes:(NSSet *)values;

@end
