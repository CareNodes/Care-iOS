//
//  CNPlantNodeViewController.h
//  Care
//
//  Created by 0day on 13-9-24.
//  Copyright (c) 2013年 CareNodes. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CNPlantNodeViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIDatePicker *datePicker;
@property (weak, nonatomic) IBOutlet UITextView *textView;

- (IBAction)cancelButtonPressed:(id)sender;
- (IBAction)sendButtonPressed:(id)sender;

@end
