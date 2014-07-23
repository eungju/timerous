//
//  StopWatch.m
//  Timerous
//
//  Created by Park Eung-ju on 7/23/14.
//  Copyright (c) 2014 Park Eung-ju. All rights reserved.
//

#import "StopWatch.h"

@implementation StopWatch

-(void)start
{
    started = [[NSDate alloc] init];
    stopped = nil;
}

-(void)stop
{
    stopped = [[NSDate alloc] init];
    accumulated += [stopped timeIntervalSinceDate:started];
}

-(void)reset
{
    accumulated = 0;
    started = nil;
    stopped = nil;
}

-(NSTimeInterval)elapsed
{
    NSTimeInterval result = accumulated;
    if (started != nil && stopped == nil) {
        result += -[started timeIntervalSinceNow];
    }
    return result;
}

@end
