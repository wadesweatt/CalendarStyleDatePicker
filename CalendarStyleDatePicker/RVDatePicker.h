//
//  RVPVPDatePicker.h
//  CalendarStyleDatePicker
//
//  Created by Wade Sweatt on 5/30/13.
//

#import <Cocoa/Cocoa.h>

#define RVPVPShouldCloseExpandedDatePicker @"RVPVPShouldCloseExpandedDatePicker"

@class RVDatePickerExpandedWindow;

@interface RVDatePicker : NSDatePicker
@property (nonatomic, strong) RVDatePickerExpandedWindow *expandedWindow;
@end
