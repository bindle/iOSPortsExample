//
//  AppDelegate_iPad.h
//  iOSPorts
//
//  Created by David Syzdek on 11/22/10.
//  Copyright 2010 David M. Syzdek. All rights reserved.
//

#import <UIKit/UIKit.h>

@class iOSPortsViewController;

@interface AppDelegate_iPad : NSObject <UIApplicationDelegate>
{
   UIWindow               * window;
   iOSPortsViewController * portController;
}

@property (nonatomic, retain) IBOutlet UIWindow      * window;
@property (nonatomic, retain) iOSPortsViewController * portController;

@end

