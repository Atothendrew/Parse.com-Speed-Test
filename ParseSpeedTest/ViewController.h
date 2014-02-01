//
//  ViewController.h
//  ParseSpeedTest
//
//  Created by Andrew Williamson on 1/29/14.
//  Copyright (c) 2014 Andrew Williamson. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *objectsTextField;
- (IBAction)saveButtonTapped:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *savingLabel;

@end
