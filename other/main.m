//
//  main.m
//  iOSPorts
//
//  Created by David Syzdek on 11/22/10.
//  Copyright 2010 David M. Syzdek. All rights reserved.
//

#import <UIKit/UIKit.h>

int main(int argc, char *argv[]) {
    
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
    int retVal = UIApplicationMain(argc, argv, nil, nil);
    [pool release];
    return retVal;
}
