//
//  CNAppDelegate.h
//  Care
//
//  Created by 0day on 13-9-17.
//  Copyright (c) 2013年 CareNodes. All rights reserved.
//

#import <UIKit/UIKit.h>

@class CNLoginViewController;
@interface CNAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) CNLoginViewController *loginViewController;

@end
