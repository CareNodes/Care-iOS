//
//  CNAPIEngine+Person.m
//  Care
//
//  Created by 0day on 13-9-17.
//  Copyright (c) 2013年 CareNodes. All rights reserved.
//

#import "CNAPIEngine+Person.h"

#import "CNAPIPersonAuthObject.h"

@implementation CNAPIEngine (Person)

- (void)signinWithAuthObject:(CNAPIPersonAuthObject *)authObject
                     success:(void (^)(void))successHandler
                     failure:(void (^)(NSError *))failureHandler {
    NSParameterAssert(authObject);
    
    NSDictionary *param = [authObject signInDictionaryValue];
    NSString *endPoint = @"/v1/people/signin";
    
    [[RKObjectManager sharedManager] postObject:nil
                                           path:endPoint
                                     parameters:param
                                        success:^(RKObjectRequestOperation *operation, RKMappingResult *mappingResult){
                                            if (successHandler) {
                                                successHandler();
                                            }
                                        }
                                        failure:^(RKObjectRequestOperation *operation, NSError *error){
                                            if (failureHandler) {
                                                failureHandler(error);
                                            }
                                        }];
}

- (void)signupWithAuthObject:(CNAPIPersonAuthObject *)authObject
                     success:(void (^)(void))successHandler
                     failure:(void (^)(NSError *))failureHandler {
    NSParameterAssert(authObject);
    
    NSDictionary *param = [authObject signUpDictionaryValue];
    NSString *endPoint = @"/v1/people/signup";
    
    [[RKObjectManager sharedManager] postObject:nil
                                           path:endPoint
                                     parameters:param
                                        success:^(RKObjectRequestOperation *operation, RKMappingResult *mappingResult){
                                            if (successHandler) {
                                                successHandler();
                                            }
                                        }
                                        failure:^(RKObjectRequestOperation *operation, NSError *error){
                                            if (failureHandler) {
                                                failureHandler(error);
                                            }
                                        }];
}

@end
