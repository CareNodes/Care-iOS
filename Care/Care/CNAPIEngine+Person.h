//
//  CNAPIEngine+Person.h
//  Care
//
//  Created by 0day on 13-9-17.
//  Copyright (c) 2013年 CareNodes. All rights reserved.
//

#import "CNAPIEngine.h"

@class CNAPIPersonAuthObject;
@interface CNAPIEngine (Person)

/**
 SignIn
 endpoint: /v1/people/signin
 method: POST
 */
- (void)signinWithAuthObject:(CNAPIPersonAuthObject *)authObject
                     success:(void (^)(NSString *token))successHandler
                     failure:(void (^)(NSError *))failureHandler;

/**
 SignUp
 endpoint: /v1/people/signup
 method: POST
 */
- (void)signupWithAuthObject:(CNAPIPersonAuthObject *)authObject
                     success:(void (^)(void))successHandler
                     failure:(void (^)(NSError *))failureHandler;

/**
 Profile
 endpoint: /v1/people/[id|me]
 method: GET
 */

/**
 Get Following
 endpoint: /v1/people/[id|me]/following
 method: GET
 query args: user_token
 */

/**
 Get Someone's Nodes
 endpoint: /v1/people/[id|me]/nodes
 method: GET
 query args: user_token
 */

/**
 Get Someone's Caring Nodes
 endpoint: /v1/people/[id|me]/caringnodes
 method: GET
 query args: user_token
 */

/**
 Get Followers
 endpoint: /v1/people/[id|me]/followers
 method: GET
 query args: user_token
 */

/**
 Following
 endpoint: /v1/pollowing/[id]
 method: POST / PUT | GET
 query args: user_token
 */

@end
