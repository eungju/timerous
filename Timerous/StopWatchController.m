//
//  StopWatchController.m
//  Timerous
//
//  Created by Park Eung-ju on 7/23/14.
//  Copyright (c) 2014 Park Eung-ju. All rights reserved.
//

#import "StopWatchController.h"

@implementation StopWatchController

- (id)init
{
    self = [super initWithWindowNibName:@"StopWatch"];
    if (self) {
        stopWatch = [[StopWatch alloc] init];
        [self reset: self];
    }
    return self;
}

- (IBAction)start:(id)sender
{
    [stopWatch start];
    [startButton setEnabled: FALSE];
    [stopButton setEnabled: TRUE];
}

- (IBAction)stop:(id)sender
{
    [stopWatch stop];
    [startButton setEnabled: TRUE];
    [stopButton setEnabled: FALSE];
}

- (IBAction)reset:(id)sender
{
    [stopWatch reset];
    [startButton setEnabled: TRUE];
    [stopButton setEnabled: FALSE];
}

- (void)updateDisplay
{
    UInt elapsed = (UInt)[stopWatch elapsed];
    UInt seconds = elapsed % 60;
    UInt minutes = (elapsed / 60) % 60;
    UInt hours = (elapsed / 60) / 60;
    [display setStringValue:[NSString stringWithFormat:@"%02u:%02u:%02u", hours, minutes, seconds]];
}

@end
