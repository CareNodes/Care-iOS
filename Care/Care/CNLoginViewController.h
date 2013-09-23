//
//  CNLoginViewController.h
//  Care
//
//  Created by 0day on 13-9-17.
//  Copyright (c) 2013年 CareNodes. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CNLoginViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *idTextField;
@property (weak, nonatomic) IBOutlet UITextField *passwordTextField;
@property (weak, nonatomic) IBOutlet UIButton *loginButton;
@property (weak, nonatomic) IBOutlet UIButton *signupButton;

+ (NSString *)storyboardId;
- (void)reset;

- (IBAction)loginButtonPressed:(id)sender;

@end
