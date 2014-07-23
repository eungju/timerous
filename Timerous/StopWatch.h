//
//  StopWatch.h
//  Timerous
//
//  Created by Park Eung-ju on 7/23/14.
//  Copyright (c) 2014 Park Eung-ju. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface StopWatch : NSObject
{
    NSTimeInterval accumulated;
    NSDate *started;
    NSDate *stopped;
}

-(void)start;
-(void)stop;
-(void)reset;
-(NSTimeInterval)elapsed;

@end
