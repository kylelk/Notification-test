//
//  AppDelegate.m
//  Notification test
//
//  Created by Kyle on 11/2/13.
//  Copyright (c) 2013 Kyle kersey. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate
@synthesize nTitle;
@synthesize nMessage;
@synthesize nResponse;
@synthesize window;

- (IBAction)showNotification:(id)sender{
    NSUserNotification *notification = [[NSUserNotification alloc] init];
    notification.title = [nTitle stringValue];
    notification.informativeText = [nMessage stringValue];
    //notification.soundName = NSUserNotificationDefaultSoundName;
    notification.responsePlaceholder = @"Reply";
    notification.hasReplyButton = true;
    notification.contentImage = [NSImage imageNamed:@"kyle.jpg"];
    
    [[NSUserNotificationCenter defaultUserNotificationCenter] deliverNotification:notification];
}
- (BOOL)userNotificationCenter:(NSUserNotificationCenter *)center shouldPresentNotification:(NSUserNotification *)notification;
{
        return YES;
    
}
- (void)userNotificationCenter:(NSUserNotificationCenter *)center
       didActivateNotification:(NSUserNotification *)notification
{
    NSString* userResponse = notification.response.string;
    [nResponse setStringValue:userResponse]; //set lable to responce
}


- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
    //[[NSUserNotificationCenter defaultUserNotificationCenter] setDelegate:self];
    NSUserNotificationCenter *center = [NSUserNotificationCenter defaultUserNotificationCenter];
    center.delegate = self;

}

@end
