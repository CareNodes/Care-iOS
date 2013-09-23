//
//  CNSignupViewController.m
//  Care
//
//  Created by 0day on 13-9-17.
//  Copyright (c) 2013年 CareNodes. All rights reserved.
//

#import "CNSignupViewController.h"

#import "CNAPIDefines.h"

@interface CNSignupViewController ()

@end

@implementation CNSignupViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark -

+ (NSString *)storyboardId {
    return @"Signup";
}

#pragma mark - Action

- (IBAction)cancelButtonPressed:(id)sender {
    [self.presentingViewController dismissViewControllerAnimated:YES
                                                      completion:nil];
}

- (IBAction)signupButtonPressed:(id)sender {
    ((UIButton *)sender).enabled = NO;
    
    self.activityView.hidden = NO;
    [self.activityView startAnimating];
    
    NSString *screenName = self.screenNameTextField.text;
    NSString *email = self.emailTextField.text;
    NSString *password = self.passwordTextField.text;
    
    CNAPIPersonAuthObject *authObject = [[CNAPIPersonAuthObject alloc] init];
    authObject.screenName = screenName;
    authObject.provider = @"email";
    authObject.externalId = email;
    authObject.password = password;
    
    __weak typeof(self) weakSelf = self;
    [[CNAPIEngine defaultEngine] signupWithAuthObject:authObject
                                              success:^{
                                                  ((UIButton *)sender).enabled = YES;
                                                  
                                                  self.activityView.hidden = YES;
                                                  [self.activityView stopAnimating];
                                                  
                                                  [weakSelf.presentingViewController dismissViewControllerAnimated:YES
                                                                                                        completion:^{
                                                                                                            UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"恭喜"
                                                                                                                                                                message:@"注册成功，登录吧。嗯，要自己重新输入一遍！"
                                                                                                                                                               delegate:nil
                                                                                                                                                      cancelButtonTitle:@"-..-"
                                                                                                                                                      otherButtonTitles:nil];
                                                                                                            [alertView show];
                                                                                                        }];
                                              }
                                              failure:^(NSError *error){
                                                  ((UIButton *)sender).enabled = YES;
                                                  
                                                  self.activityView.hidden = YES;
                                                  [self.activityView stopAnimating];
                                              }];
}

@end
