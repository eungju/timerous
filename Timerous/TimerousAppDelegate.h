//
//  TimerousAppDelegate.h
//  Timerous
//
//  Created by Park Eung-ju on 7/23/14.
//  Copyright (c) 2014 Park Eung-ju. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "StopWatch.h"

@interface TimerousAppDelegate : NSObject <NSApplicationDelegate>
{
    StopWatch *stopWatch;
}

@property (assign) IBOutlet NSWindow *window;
@property (weak) IBOutlet NSTextField *display;
@property (weak) IBOutlet NSButton *startButton;
@property (weak) IBOutlet NSButton *stopButton;
@property (weak) IBOutlet NSButton *resetButton;

@end
