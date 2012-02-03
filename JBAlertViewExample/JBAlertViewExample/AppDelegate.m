//
//  AppDelegate.m
//  JBAlertViewExample
//
//  Created by Jean-Baptiste Castro on 27/01/12.
//  Copyright (c) 2012 - jeanbaptistecastro.com - All rights reserved.
//

#import "AppDelegate.h"
#import "ViewControllerExample.h"

@implementation AppDelegate

@synthesize window = _window;
@synthesize viewController = _viewController;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    self.viewController = [[ViewControllerExample alloc] initWithNibName:@"ViewControllerExample" bundle:nil];
    self.window.rootViewController = self.viewController;
    [self.window makeKeyAndVisible];
    return YES;
}

@end
