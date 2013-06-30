//
//  AppDelegate.h
//  CalendarStyleDatePicker
//
//  Created by Wade Sweatt on 6/28/13.
//  Copyright (c) 2013 J. Wade Sweatt. All rights reserved.
//
//  Permission is given to use this source code file without charge in any
//  project, commercial or otherwise, entirely at your risk, with the condition
//  that any redistribution (in part or whole) of source code must retain
//  this copyright and permission notice. Attribution in compiled projects is
//  appreciated but not required.
//

#import <Cocoa/Cocoa.h>
@class RVDatePicker;

@interface AppDelegate : NSObject <NSApplicationDelegate, NSWindowDelegate>

@property (weak) IBOutlet RVDatePicker *datePicker;
@property (assign) IBOutlet NSWindow *window;

@end
