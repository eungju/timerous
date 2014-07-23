//
//  TimerousController.h
//  Timerous
//
//  Created by Park Eung-ju on 7/23/14.
//  Copyright (c) 2014 Park Eung-ju. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "StopWatchController.h"

@interface TimerousController : NSObject
{
    NSMutableArray *timerControllers;
}

- (void)registerTimerController:(StopWatchController *)timerController;

- (void)unregisterTimerController:(StopWatchController *)timerController;

@end
