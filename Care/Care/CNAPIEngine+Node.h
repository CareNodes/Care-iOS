//
//  CNAPIEngine+Node.h
//  Care
//
//  Created by 0day on 13-9-17.
//  Copyright (c) 2013年 CareNodes. All rights reserved.
//

#import "CNAPIEngine.h"

@interface CNAPIEngine (Node)

/**
 Get A Node
 endpoint: /v1/nodes/[id]
 */

/**
 Delete A Node
 endpoint: /v1/nodes/[id]
 */

/**
 Plant A Node (with / without reply ID)
 endpoint: /v1/nodes
 method: post / put
 */

/**
 Care A Node
 endpoint: /v1/carings/[id]
 method: post | del
 */

@end
