//
//  CNSignupViewController.h
//  Care
//
//  Created by 0day on 13-9-17.
//  Copyright (c) 2013年 CareNodes. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CNSignupViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIButton *cancelButton;
@property (weak, nonatomic) IBOutlet UITextField *screenNameTextField;
@property (weak, nonatomic) IBOutlet UITextField *emailTextField;
@property (weak, nonatomic) IBOutlet UITextField *passwordTextField;
@property (weak, nonatomic) IBOutlet UIButton *signupButton;
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *activityView;

+ (NSString *)storyboardId;

- (IBAction)cancelButtonPressed:(id)sender;
- (IBAction)signupButtonPressed:(id)sender;

@end
