//
//  TimerousAppDelegate.m
//  Timerous
//
//  Created by Park Eung-ju on 7/23/14.
//  Copyright (c) 2014 Park Eung-ju. All rights reserved.
//

#import "TimerousAppDelegate.h"

@implementation TimerousAppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    timerControllers = [[NSMutableArray alloc] init];
    
    for (int i = 0; i < 2; i++) {
        StopWatchController *stopWatchController = [[StopWatchController alloc] init];
        [stopWatchController showWindow:self];
        [timerControllers addObject:stopWatchController];
    }

    [NSTimer scheduledTimerWithTimeInterval:0.01 target:self selector:@selector(updateTimers) userInfo:nil repeats: YES];
}

- (void)updateTimers
{
    NSEnumerator *enumerator = [timerControllers objectEnumerator];
    StopWatchController *timerController;
    while (timerController = [enumerator nextObject]) {
        [timerController updateDisplay];
    }
}

@end
