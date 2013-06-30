//
//  AppDelegate.h
//  CalendarStyleDatePicker
//
//  Created by Wade Sweatt on 6/28/13.
//  Copyright (c) 2013 J. Wade Sweatt. All rights reserved.
//

#import <Cocoa/Cocoa.h>
@class RVDatePicker;

@interface AppDelegate : NSObject <NSApplicationDelegate, NSWindowDelegate>

@property (weak) IBOutlet RVDatePicker *datePicker;
@property (assign) IBOutlet NSWindow *window;

@end
