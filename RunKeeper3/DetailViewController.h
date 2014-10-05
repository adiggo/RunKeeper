//
//  DetailViewController.h
//  RunKeeper3
//
//  Created by Li, Xiaoping on 9/5/14.
//  Copyright (c) 2014 Xiaoping. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@class Run;

@interface DetailViewController : UIViewController <MKMapViewDelegate>

@property (strong, nonatomic) Run *run;

@end