//
//  AppDelegate_iPad.m
//  iOSPorts
//
//  Created by David Syzdek on 11/22/10.
//  Copyright 2010 David M. Syzdek. All rights reserved.
//

#import "AppDelegate_iPad.h"
#import <iOSPorts/iOSPorts.h>

extern const char iOSPorts_license[];

@implementation AppDelegate_iPad

@synthesize window;
@synthesize portController;


#pragma mark -
#pragma mark Application lifecycle

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
   iOSPortsPackage        * portpkg;

   // Override point for customization after application launch.
   portpkg = [[iOSPortsPackage alloc] init];
   portpkg.name    = @"iOS Ports Example";
   portpkg.version = [[[NSBundle mainBundle] infoDictionary] valueForKey:@"CFBundleVersion"];
   portpkg.website = @"https://github.com/bindle/iOSPortsExample";
   portpkg.license = [NSString stringWithUTF8String:iOSPorts_license];

   self.portController = [[iOSPortsViewController alloc] init];
   [portController release];
   [portController addPackage:portpkg];
   [portController addPackageWithIdentifier:@"openssl"];
   [portController addPackageWithIdentifier:@"openldap"];
   [portController addPackageWithIdentifier:@"cyrus-sasl"];
   [portController addPackageWithIdentifier:@"pcre"];

   // Uncomment to set a custom frame for the PortsPackageView
   //portController.viewFrame = CGRectMake(0, 0, 320, 480);

   [window addSubview:portController.view];
   [window makeKeyAndVisible];

   [portpkg release];
   portpkg = nil;

   return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    /*
     Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
     Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
     */
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    /*
     Restart any tasks that were paused (or not yet started) while the application was inactive.
     */
}


- (void)applicationWillTerminate:(UIApplication *)application {
    /*
     Called when the application is about to terminate.
     */
}


#pragma mark -
#pragma mark Memory management

- (void)applicationDidReceiveMemoryWarning:(UIApplication *)application {
    /*
     Free up as much memory as possible by purging cached data objects that can be recreated (or reloaded from disk) later.
     */
}


- (void)dealloc {
    [window release];
    [super dealloc];
}


@end
