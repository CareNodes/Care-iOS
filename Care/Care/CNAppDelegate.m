//
//  CNAppDelegate.m
//  Care
//
//  Created by 0day on 13-9-17.
//  Copyright (c) 2013年 CareNodes. All rights reserved.
//

#import "CNAppDelegate.h"
#import "CNAPIConfig.h"

#import "CNAPIDefines.h"
#import "CNLoginViewController.h"

@implementation CNAppDelegate

- (void)initRKObectManager {
    AFHTTPClient *httpClient = [AFHTTPClient clientWithBaseURL:[NSURL URLWithString:API_URI]];
    httpClient.parameterEncoding = AFJSONParameterEncoding;
    RKObjectManager *sharedObjectManager = [[RKObjectManager alloc] initWithHTTPClient:httpClient];
    [RKObjectManager setSharedManager:sharedObjectManager];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    RKLogSetAppLoggingLevel(RKLogLevelDefault);
    RKLogConfigureByName("RestKit/Network", RKLogLevelTrace);
    
    [self initRKObectManager];
    
    return YES;
}
							
- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    NSString *userToken = [userDefaults valueForKey:@"token"];
    if (userToken) {
        
    } else {
        if (!self.loginViewController) {
            UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
            self.loginViewController = [storyboard instantiateViewControllerWithIdentifier:[CNLoginViewController storyboardId]];
        } else {
            [self.loginViewController reset];
        }
        
        if (!self.loginViewController.presentingViewController) {
            [self.window.rootViewController presentViewController:self.loginViewController
                                                         animated:NO
                                                       completion:nil];
        }
    }
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
