//
//  TimerousAppDelegate.m
//  Timerous
//
//  Created by Park Eung-ju on 7/23/14.
//  Copyright (c) 2014 Park Eung-ju. All rights reserved.
//

#import "TimerousAppDelegate.h"

@implementation TimerousAppDelegate

- (id)init
{
    self = [super init];
    if (self) {
        stopWatch = [[StopWatch alloc] init];
    }
    return self;
}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    [self reset: self];
    [NSTimer scheduledTimerWithTimeInterval:0.01 target:self selector:@selector(updateDisplay) userInfo:nil repeats: YES];
}

- (IBAction)start:(id)sender
{
    [stopWatch start];
    [_startButton setEnabled: FALSE];
    [_stopButton setEnabled: TRUE];
}

- (IBAction)stop:(id)sender
{
    [stopWatch stop];
    [_startButton setEnabled: TRUE];
    [_stopButton setEnabled: FALSE];
}

- (IBAction)reset:(id)sender
{
    [stopWatch reset];
    [_startButton setEnabled: TRUE];
    [_stopButton setEnabled: FALSE];
}

-(void)updateDisplay
{
    UInt elapsed = (UInt)[stopWatch elapsed];
    UInt seconds = elapsed % 60;
    UInt minutes = (elapsed / 60) % 60;
    UInt hours = (elapsed / 60) / 60;
    [_display setStringValue:[NSString stringWithFormat:@"%02u:%02u:%02u", hours, minutes, seconds]];
}

@end
