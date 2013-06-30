//
//  AppDelegate.m
//  CalendarStyleDatePicker
//
//  Created by Wade Sweatt on 6/28/13.
//  Copyright (c) 2013 J. Wade Sweatt. All rights reserved.
//

#import "AppDelegate.h"
#import "RVDatePicker.h"

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
	[self.window setDelegate:self];
	[self.datePicker setDateValue:[NSDate date]];
}


#pragma mark - WINDOW DELEGATE

- (void) windowWillBecomeKey:(NSNotification *)notification {
	if ([notification object] == self.window) {
		[[NSNotificationCenter defaultCenter] postNotificationName:RVPVPShouldCloseExpandedDatePicker object:nil];
	}
}

- (void) windowWillMove:(NSNotification *)notification {
	if ([notification object] == self.window) {
		[[NSNotificationCenter defaultCenter] postNotificationName:RVPVPShouldCloseExpandedDatePicker object:nil];
	}
}

- (void) windowWillResignKey:(NSNotification *)notification {
	if ([notification object] == self.window) {
		[[NSNotificationCenter defaultCenter] postNotificationName:RVPVPShouldCloseExpandedDatePicker object:nil];
	}
}

- (void) windowWillClose:(NSNotification *)notification {
	if ([notification object] == self.window) {
		[[NSNotificationCenter defaultCenter] postNotificationName:RVPVPShouldCloseExpandedDatePicker object:nil];
	}
}

@end
