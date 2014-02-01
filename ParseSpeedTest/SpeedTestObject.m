//
//  SpeedTestObject.m
//  ParseSpeedTest
//
//  Created by Andrew Williamson on 1/29/14.
//  Copyright (c) 2014 Andrew Williamson. All rights reserved.
//

#import "SpeedTestObject.h"

@implementation SpeedTestObject

@dynamic startDate;
@dynamic endDate;
@dynamic file;
@dynamic elapsed;
@dynamic group;
@dynamic objectNumber;

+ (NSString *)parseClassName {
    return @"SpeedTestObject";
}

- (void)initAndSave {
    
    self.file = [PFFile fileWithName:@"1mb.txt" data:[NSData dataWithContentsOfFile:@"1mb.txt"]];
    self.startDate = [NSDate date];
    
    // Save object
    [self saveInBackgroundWithTarget:self selector:@selector(objectIsDone:error:)];
}

- (void)objectIsDone:(NSNumber *)result error:(NSError *)error {
    if (!error) {
        self.endDate = [NSDate date];
        
        NSTimeInterval elapsedTime = [self.endDate timeIntervalSinceDate:self.startDate];
        self.elapsed = elapsedTime * 1000.0; // convert to milliseconds
        
        NSLog(@"%f", self.elapsed);
        
        [self saveEventually];
        
        NSLog(@"Saved");
    }
    else{
        // Log details of the failure
        NSLog(@"Error: %@ %@", error, [error userInfo]);
    }

}

@end
