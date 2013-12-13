//
//  TestingViewController.h
//  GeoGolf
//
//  Created by cj on 12/10/13.
//  Copyright (c) 2013 KickinEspresso. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import <CoreLocation/CoreLocation.h>
#import "GGAnnotation.h"

#define METERS_PER_MILE 1609.344

@class TestingViewController;

@protocol TestingViewControllerDelegate
- (void)testingViewControllerDidFinish:(TestingViewController *)controller;
@end

@interface TestingViewController : UIViewController <MKMapViewDelegate, CLLocationManagerDelegate>

@property (weak, nonatomic) id <TestingViewControllerDelegate> delegate;
@property (weak, nonatomic) IBOutlet MKMapView *mapView;
@property (strong, nonatomic) CLLocationManager *locManager;


@property (strong, nonatomic) IBOutlet UILabel* currentLatLabel;
@property (strong, nonatomic) IBOutlet UILabel* currentLongLabel;

@property (strong, nonatomic) IBOutlet UILabel* markedLatLabel;
@property (strong, nonatomic) IBOutlet UILabel* markedLongLabel;

@property (strong, nonatomic) IBOutlet UILabel* distanceToMarkLabel;

@property (strong, nonatomic) GGAnnotation* markedLocation;

@property (strong, nonatomic) CLLocationManager* locationManager;



- (IBAction)done:(id)sender;
- (IBAction)markCurrentPositionAction:(id)sender;

@end


