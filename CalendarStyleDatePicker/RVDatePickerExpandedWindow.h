//
//  RVPVPDatePickerExpandedWindow.h
//  CalendarStyleDatePicker
//
//  Created by Wade Sweatt on 5/30/13.
//

#import <Cocoa/Cocoa.h>
#import "RVDatePicker.h"

@interface RVDatePickerExpandedWindow : NSWindow
@property (nonatomic, weak) RVDatePicker *parentDatePicker;
@end 
