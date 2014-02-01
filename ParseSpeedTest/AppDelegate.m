//
//  AppDelegate.m
//  ParseSpeedTest
//
//  Created by Andrew Williamson on 1/29/14.
//  Copyright (c) 2014 Andrew Williamson. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"
#import "SpeedTestObject.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    
    [SpeedTestObject registerSubclass];
    
    // Set up the Parse instance
    [Parse setApplicationId:@"YOUR_APP_ID"
                  clientKey:@"YOUR_CLIENT_KEY"];
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    ViewController *root = [[ViewController alloc] initWithNibName:@"ViewController" bundle:nil];
    [self.window setRootViewController:root];

    return YES;
}

@end
