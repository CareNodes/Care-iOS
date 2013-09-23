//
//  CNLoginViewController.m
//  Care
//
//  Created by 0day on 13-9-17.
//  Copyright (c) 2013年 CareNodes. All rights reserved.
//

#import "CNLoginViewController.h"

#import "CNAPIDefines.h"

@interface CNLoginViewController ()

@end

@implementation CNLoginViewController

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
    return @"Login";
}

- (void)reset {
    self.idTextField.text = nil;
    self.passwordTextField.text = nil;
}

#pragma mark - Action

- (IBAction)loginButtonPressed:(id)sender {
    ((UIButton *)sender).enabled = NO;
    
    NSString *personId = self.idTextField.text;
    NSString *password = self.passwordTextField.text;
    
    CNAPIPersonAuthObject *authObject = [[CNAPIPersonAuthObject alloc] init];
    authObject.screenName = personId;
    authObject.password = password;
    
    __weak typeof(self) weakSelf = self;
    
    [[CNAPIEngine defaultEngine] signinWithAuthObject:authObject
                                              success:^(NSString *token){
                                                  ((UIButton *)sender).enabled = YES;
                                                  
                                                  [weakSelf.presentingViewController dismissViewControllerAnimated:YES
                                                                                                        completion:nil];
                                              }
                                              failure:^(NSError *error){
                                                  ((UIButton *)sender).enabled = YES;
                                              }];
}

@end
