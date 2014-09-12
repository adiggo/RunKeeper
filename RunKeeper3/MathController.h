//
//  MathController.h
//  RunKeeper3
//
//  Created by Li, Xiaoping on 9/9/14.
//  Copyright (c) 2014 Xiaoping. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MathController : NSObject

+ (NSString *)stringifyDistance:(float)meters;
+ (NSString *)stringifySecondCount:(int)seconds usingLongFormat:(BOOL)longFormat;
+ (NSString *)stringifyAvgPaceFromDist:(float)meters overTime:(int)seconds;

@end
