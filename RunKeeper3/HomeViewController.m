//
//  HomeViewController.m
//  RunKeeper3
//
//  Created by Li, Xiaoping on 9/5/14.
//  Copyright (c) 2014 Xiaoping. All rights reserved.
//

#import "HomeViewController.h"
#import "NewRunViewController.h"
#import "Run.h"
#import "Location.h"

@interface HomeViewController ()

@property (strong, nonatomic) NSArray *runArray;

@end

@implementation HomeViewController




- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    //add background image
    self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"background.png"]];
    
    NSFetchRequest *fetchRequest = [[NSFetchRequest alloc] init];
    NSEntityDescription *entity = [NSEntityDescription
                                   entityForName:@"Run" inManagedObjectContext:self.managedObjectContext];
    [fetchRequest setEntity:entity];
    
    NSSortDescriptor *sortDescriptor = [[NSSortDescriptor alloc] initWithKey:@"timestamp" ascending:NO];
    [fetchRequest setSortDescriptors:@[sortDescriptor]];
    
    self.runArray = [self.managedObjectContext executeFetchRequest:fetchRequest error:nil];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    UIViewController *nextController = [segue destinationViewController];
    if ([nextController isKindOfClass:[NewRunViewController class]]) {
        ((NewRunViewController *) nextController).managedObjectContext = self.managedObjectContext;
    }
}



/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
