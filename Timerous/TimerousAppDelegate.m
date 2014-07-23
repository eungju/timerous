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
    [NSTimer scheduledTimerWithTimeInterval:0.01 target:self selector:@selector(updateTimers) userInfo:nil repeats: YES];
    [self addStopWatch: self];
}

- (void)updateTimers
{
    NSEnumerator *enumerator = [timerControllers objectEnumerator];
    StopWatchController *timerController;
    while (timerController = [enumerator nextObject]) {
        [timerController updateDisplay];
    }
}

- (IBAction)addStopWatch:(id)sender {
    StopWatchController *stopWatchController = [[StopWatchController alloc] initWithMaster:self];
    [stopWatchController showWindow:self];
}

- (void)registerTimerController:(StopWatchController *)timerController
{
    NSLog(@"Register %@.", timerController);
    [timerControllers addObject:timerController];
}

- (void)unregisterTimerController:(StopWatchController *)timerController
{
    NSLog(@"Unregister %@.", timerController);
    [timerControllers removeObject: timerController];
}

@end
