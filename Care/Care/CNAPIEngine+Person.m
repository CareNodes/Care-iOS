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
                     success:(void (^)(NSString *token))successHandler
                     failure:(void (^)(NSError *))failureHandler {
    NSParameterAssert(authObject);
    
    NSDictionary *param = [authObject signInDictionaryValue];
    NSString *endPoint = @"/v1/people/signin";
    
    [[RKObjectManager sharedManager].HTTPClient postPath:endPoint
                                              parameters:param
                                                 success:^(AFHTTPRequestOperation *operation, id responseObject){
                                                     NSDictionary *responseDict = [NSJSONSerialization JSONObjectWithData:responseObject
                                                                                                                  options:NSJSONReadingMutableContainers
                                                                                                                    error:nil];
                                                     
                                                     NSString *token = [responseDict valueForKey:@"token"];
                                                     self.userToken = token;
                                                     
                                                     [[NSUserDefaults standardUserDefaults] setValue:token forKey:@"token"];
                                                     [[NSUserDefaults standardUserDefaults] synchronize];
                                                     
                                                     if (successHandler) {
                                                         successHandler(token);
                                                     }
                                                 }
                                                 failure:^(AFHTTPRequestOperation *operatoin, NSError *error){
                                                     if (failureHandler) {
                                                         failureHandler(error);
                                                     }
                                                     
                                                     UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Error"
                                                                                                         message:[NSString stringWithFormat:@"%@", error]
                                                                                                        delegate:nil
                                                                                               cancelButtonTitle:@"好吧" otherButtonTitles:nil];
                                                     [alertView show];
                                                 }];
}

- (void)signupWithAuthObject:(CNAPIPersonAuthObject *)authObject
                     success:(void (^)(void))successHandler
                     failure:(void (^)(NSError *))failureHandler {
    NSParameterAssert(authObject);
    
    NSDictionary *param = [authObject signUpDictionaryValue];
    NSString *endPoint = @"/v1/people/signup";
    
    [[RKObjectManager sharedManager].HTTPClient postPath:endPoint
                                              parameters:param
                                                 success:^(AFHTTPRequestOperation *operation, id responseObject){
                                                     if (successHandler) {
                                                         successHandler();
                                                     }
                                                 }
                                                 failure:^(AFHTTPRequestOperation *operatoin, NSError *error){
                                                     if (failureHandler) {
                                                         failureHandler(error);
                                                     }
                                                     
                                                     UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Error"
                                                                                                         message:[NSString stringWithFormat:@"%@", error]
                                                                                                        delegate:nil
                                                                                               cancelButtonTitle:@"好吧" otherButtonTitles:nil];
                                                     [alertView show];
                                                 }];
}

@end
