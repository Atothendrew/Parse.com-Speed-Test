//
//  ViewController.m
//  ParseSpeedTest
//
//  Created by Andrew Williamson on 1/29/14.
//  Copyright (c) 2014 Andrew Williamson. All rights reserved.
//

#import "ViewController.h"
#import <Parse/Parse.h>
#import "SpeedTestObject.h"

@interface ViewController ()

@property (nonatomic, retain) NSMutableArray *parseObjects;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)createAndSaveUser:(int)howMany {
    
    for (int i = 0; i < howMany; i++) {
        
        SpeedTestObject *object = [SpeedTestObject new];
        object.group = howMany;
        object.objectNumber = i;
        [object initAndSave];
        [self.parseObjects addObject:object];
        
    }
}

- (IBAction)saveButtonTapped:(id)sender {
    [self createAndSaveUser:[self.objectsTextField.text integerValue]];
    UIButton *saveButton = (UIButton *)sender;
    saveButton.enabled = false;
    self.savingLabel.hidden = false;
}


@end
