//
//  Location.h
//  RunKeeper3
//
//  Created by Li, Xiaoping on 9/5/14.
//  Copyright (c) 2014 Xiaoping. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Location : NSManagedObject

@property (nonatomic, retain) NSDate * timestamp;
@property (nonatomic, retain) NSNumber * longitude;
@property (nonatomic, retain) NSNumber * latitude;
@property (nonatomic, retain) NSManagedObject *run;

@end
