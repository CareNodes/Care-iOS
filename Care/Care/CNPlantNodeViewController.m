//
//  CNPlantNodeViewController.m
//  Care
//
//  Created by 0day on 13-9-24.
//  Copyright (c) 2013年 CareNodes. All rights reserved.
//

#import "CNPlantNodeViewController.h"

#import "CNAPIDefines.h"

@interface CNPlantNodeViewController ()

@end

@implementation CNPlantNodeViewController

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

- (IBAction)cancelButtonPressed:(id)sender {
    [self.presentingViewController dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)sendButtonPressed:(id)sender {
//    [[CNAPIEngine defaultEngine] plantANode:<#(CNNode *)#> success:<#^(void)successHandler#> failure:<#^(void)failureHandler#>];
}

@end
