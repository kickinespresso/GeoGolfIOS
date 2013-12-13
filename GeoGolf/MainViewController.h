//
//  MainViewController.h
//  GeoGolf
//
//  Created by cj on 12/8/13.
//  Copyright (c) 2013 KickinEspresso. All rights reserved.
//

#import "FlipsideViewController.h"
#import "TestingViewController.h"
@interface MainViewController : UIViewController <FlipsideViewControllerDelegate,TestingViewControllerDelegate, UIPopoverControllerDelegate>

@property (strong, nonatomic) NSManagedObjectContext *managedObjectContext;

@property (strong, nonatomic) UIPopoverController *flipsidePopoverController;

@end
