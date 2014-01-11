//
//  AppDelegate.h
//  Notification test
//
//  Created by Kyle on 11/2/13.
//  Copyright (c) 2013 Kyle kersey. All rights reserved.
//

#import <Cocoa/Cocoa.h>

//@interface AppDelegate : NSObject <NSApplicationDelegate>
@interface AppDelegate : NSObject <NSApplicationDelegate, NSUserNotificationCenterDelegate>

@property (weak) IBOutlet NSTextField *nTitle;
@property (weak) IBOutlet NSTextField *nMessage;
-(IBAction)showNotification:(id)sender;

@property (weak) IBOutlet NSTextField *nResponse;

@property (assign) IBOutlet NSWindow *window;

// Set to YES if the notification has a reply button. The default value is NO.
// If both this and hasActionButton are YES, the reply button will be shown.
@property BOOL hasReplyButton NS_AVAILABLE(10_9, NA);

// Optional placeholder for inline reply field.
@property (copy) NSString *responsePlaceholder NS_AVAILABLE(10_9, NA);

// When a notification has been responded to, the NSUserNotificationCenter delegate
// didActivateNotification: will be called with the notification with the activationType
// set to NSUserNotificationActivationTypeReplied and the response set on the response property
@property (readonly) NSAttributedString *response NS_AVAILABLE(10_9, NA);


@property (copy) NSImage *contentImage NS_AVAILABLE(10_9, NA);

@end
