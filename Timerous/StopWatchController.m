//
//  StopWatchController.m
//  Timerous
//
//  Created by Park Eung-ju on 7/23/14.
//  Copyright (c) 2014 Park Eung-ju. All rights reserved.
//

#import "StopWatchController.h"
#import "TimerousController.h"

@implementation StopWatchController

- (id)init
{
    self = [super initWithWindowNibName:@"StopWatch"];
    if (self) {
        stopWatch = [[StopWatch alloc] init];
    }
    return self;
}

- (id)initWithMaster:(TimerousController *)masterController
{
    self = [self init];
    if (self) {
        master = masterController;
        [master registerTimerController: self];
    }
    return self;
}

- (void)windowDidLoad
{
    [self reset: self];
}

- (IBAction)start:(id)sender
{
    NSLog(@"Start %@", self);
    [stopWatch start];
    [startButton setEnabled: FALSE];
    [stopButton setEnabled: TRUE];
}

- (IBAction)stop:(id)sender
{
    NSLog(@"Stop %@", self);
    [stopWatch stop];
    [startButton setEnabled: TRUE];
    [stopButton setEnabled: FALSE];
}

- (IBAction)reset:(id)sender
{
    NSLog(@"Reset %@", self);
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
    [display setStringValue:[NSString stringWithFormat:@"%02uh %02um %02us", hours, minutes, seconds]];
}

- (void)windowWillClose:(NSNotification *)notification
{
    if (master != nil) {
        [master unregisterTimerController: self];
    }
}

@end
