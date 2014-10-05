//
//  Location.h
//  RunKeeper3
//
//  Created by Li, Xiaoping on 9/13/14.
//  Copyright (c) 2014 Xiaoping. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Run;

@interface Location : NSManagedObject

@property (nonatomic, retain) NSDate * timestamp;
@property (nonatomic, retain) NSNumber * longitude;
@property (nonatomic, retain) NSNumber * latitude;
@property (nonatomic, retain) Run *run;

@end
