//
//  RVPVPDatePicker.m
//  CalendarStyleDatePicker
//
//  Created by Wade Sweatt on 5/30/13.
//
//  Permission is given to use this source code file without charge in any
//  project, commercial or otherwise, entirely at your risk, with the condition
//  that any redistribution (in part or whole) of source code must retain
//  this copyright and permission notice. Attribution in compiled projects is
//  appreciated but not required.
//

#import "RVDatePicker.h"
#import "RVDatePickerExpandedWindow.h"

#define EXPANDED_WINDOW_HEIGHT 220

@implementation RVDatePicker

- (void) awakeFromNib {
	[self.expandedWindow setParentDatePicker:self];
}

- (void) mouseDown:(NSEvent *)theEvent {
	if ([theEvent clickCount] > 1) {
		NSRect windowFrame = self.window.frame;
		NSRect datePickerFrame = self.frame;
		NSRect expandedWindowRect = windowFrame;
		expandedWindowRect.origin.x += datePickerFrame.origin.x;
		expandedWindowRect.origin.y += (datePickerFrame.origin.y - EXPANDED_WINDOW_HEIGHT*0.86);
		expandedWindowRect.size.width = 170;
		expandedWindowRect.size.height = EXPANDED_WINDOW_HEIGHT;
		self.expandedWindow = [[RVDatePickerExpandedWindow alloc] initWithContentRect:expandedWindowRect
																			styleMask:NSBorderlessWindowMask
																			  backing:NSBackingStoreBuffered
																				defer:NO];
		[self.expandedWindow setParentDatePicker:self];
		[self.expandedWindow makeKeyAndOrderFront:self];
		//NSLog(@"scheduler window frame: %@, expandedWindow frame: %@", NSStringFromRect(self.window.frame), NSStringFromRect(self.expandedWindow.frame));
	} else {
		[self.expandedWindow orderOut:nil];
		[super mouseDown:theEvent];
	}
}
@end
