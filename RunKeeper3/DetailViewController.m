//
//  DetailViewController.m
//  RunKeeper3
//
//  Created by Li, Xiaoping on 9/5/14.
//  Copyright (c) 2014 Xiaoping. All rights reserved.
//
#import "DetailViewController.h"
#import <MapKit/MapKit.h>

@interface DetailViewController () <MKMapViewDelegate>

@property (nonatomic, weak) IBOutlet MKMapView *mapView;
@property (nonatomic, weak) IBOutlet UILabel *distanceLabel;
@property (nonatomic, weak) IBOutlet UILabel *dateLabel;
@property (nonatomic, weak) IBOutlet UILabel *timeLabel;
@property (nonatomic, weak) IBOutlet UILabel *paceLabel;

@end

@implementation DetailViewController

#pragma mark - Managing the detail item

- (void)setRun:(Run *)run
{
    if (_run != run) {
        _run = run;
        [self configureView];
    }
}

- (void)configureView
{
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self configureView];
}

@end    // Called when the view is shown again in the split view, invalidating the button and popover controller.

