//
//  StopWatchController.h
//  Timerous
//
//  Created by Park Eung-ju on 7/23/14.
//  Copyright (c) 2014 Park Eung-ju. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "StopWatch.h"

@class TimerousController;

@interface StopWatchController : NSWindowController <NSWindowDelegate>
{
    __weak TimerousController *master;
    StopWatch *stopWatch;
    IBOutlet NSTextField *display;
    IBOutlet NSButton *startButton;
    IBOutlet NSButton *stopButton;
    IBOutlet NSButton *resetButton;
}

- (id)initWithMaster:(TimerousController *)masterController;
- (IBAction)start:(id)sender;
- (IBAction)stop:(id)sender;
- (IBAction)reset:(id)sender;
- (void)updateDisplay;

@end
