//
//  SpeedTestObject.h
//  ParseSpeedTest
//
//  Created by Andrew Williamson on 1/29/14.
//  Copyright (c) 2014 Andrew Williamson. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Parse/Parse.h>

@interface SpeedTestObject : PFObject<PFSubclassing>

@property (strong, retain) NSDate *startDate;
@property (strong, retain) NSDate *endDate;
@property (strong, retain) PFFile *file;
@property double elapsed;
@property int group;
@property int objectNumber;

- (void)initAndSave;

@end
