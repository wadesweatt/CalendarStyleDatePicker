//
//  RVPVPDatePickerExpandedWindow.h
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

#import <Cocoa/Cocoa.h>
#import "RVDatePicker.h"

@interface RVDatePickerExpandedWindow : NSWindow
@property (nonatomic, weak) RVDatePicker *parentDatePicker;
@end 
