//
//  TestingViewController.m
//  GeoGolf
//
//  Created by cj on 12/10/13.
//  Copyright (c) 2013 KickinEspresso. All rights reserved.
//

#import "TestingViewController.h"

@interface TestingViewController ()

@end

@implementation TestingViewController

@synthesize locManager;
@synthesize markedLocation;
@synthesize locationManager;


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    
    self.locationManager = [[CLLocationManager alloc] init] ;
    self.locationManager.delegate = self; // send loc updates to myself
    [self.locationManager setDesiredAccuracy:kCLLocationAccuracyBest];
    [self.locationManager startUpdatingLocation];
    
    
    //locManager = [[CLLocationManager alloc] init];
    //[locManager setDelegate:self];
    //[locManager setDesiredAccuracy:kCLLocationAccuracyBest];
    //[locManager startPdatingLocation];
    //4
    self.mapView.delegate = self;
    //5
    
    /*
    CLLocationCoordinate2D coordinate1;
    coordinate1.latitude = 40.740384;
    coordinate1.longitude = -73.991146;
    GGAnnotation *annotation = [[GGAnnotation alloc] initWithCoordinate:coordinate1 title:@"Starbucks NY"];
    [self.mapView addAnnotation:annotation];
    
    CLLocationCoordinate2D coordinate2;
    coordinate2.latitude = 40.741623;
    coordinate2.longitude = -73.992021;
    GGAnnotation *annotation2 = [[GGAnnotation alloc] initWithCoordinate:coordinate2 title:@"Pascal Boyer Gallery"];
    [self.mapView addAnnotation:annotation2];
    
    CLLocationCoordinate2D coordinate3;
    coordinate3.latitude = 40.739490;
    coordinate3.longitude = -73.991154;
    GGAnnotation *annotation3 = [[GGAnnotation alloc] initWithCoordinate:coordinate3 title:@"Virgin Records"];
    [self.mapView addAnnotation:annotation3];
     */
    
    self.mapView.showsUserLocation = true;
    
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    //1
    /*
    CLLocationCoordinate2D zoomLocation;
    zoomLocation.latitude = 40.740848;
    zoomLocation.longitude= -73.991145;
    
    // 2
     */
    
    CLLocationCoordinate2D zoomLocation = [[[self.mapView userLocation] location] coordinate];
    NSLog(@"Location found from Map: %f %f",zoomLocation.latitude,zoomLocation.longitude);
    MKCoordinateRegion viewRegion = MKCoordinateRegionMakeWithDistance(zoomLocation, 0.3*METERS_PER_MILE, 0.3*METERS_PER_MILE);
    [self.mapView setRegion:viewRegion animated:YES];
    
    
}

- (void)viewDidAppear:(BOOL)animated{
    
    CLLocationCoordinate2D zoomLocation = [[[self.mapView userLocation] location] coordinate];
    NSLog(@"Location found from Map: %f %f",zoomLocation.latitude,zoomLocation.longitude);
    MKCoordinateRegion viewRegion = MKCoordinateRegionMakeWithDistance(zoomLocation, 0.3*METERS_PER_MILE, 0.3*METERS_PER_MILE);
    [self.mapView setRegion:viewRegion animated:YES];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Actions

- (IBAction)done:(id)sender
{
    [self.delegate testingViewControllerDidFinish:self];
}

- (IBAction)markCurrentPositionAction:(id)sender{
    
    if (markedLocation == nil){
        CLLocationCoordinate2D zoomLocation = [[[self.mapView userLocation] location] coordinate];
        markedLocation = [[GGAnnotation alloc] initWithCoordinate:zoomLocation title:@"Pin"];
        [self.mapView addAnnotation:markedLocation];
    }else{
        [self.mapView removeAnnotation:markedLocation];
        
        markedLocation = nil;
        CLLocationCoordinate2D zoomLocation = [[[self.mapView userLocation] location] coordinate];
        markedLocation = [[GGAnnotation alloc] initWithCoordinate:zoomLocation title:@"Pin"];
        [self.mapView addAnnotation:markedLocation];
    }
    
    self.markedLatLabel.text = [NSString stringWithFormat:@"%f", markedLocation.coordinate.latitude];
    self.markedLongLabel.text = [NSString stringWithFormat:@"%f", markedLocation.coordinate.longitude];
    
}
#pragma mark - LocationManager
- (void)locationManager:(CLLocationManager *)manager
    didUpdateToLocation:(CLLocation *)newLocation
           fromLocation:(CLLocation *)oldLocation{
    
    NSLog(@"Location: %@", [newLocation description]);


    
    if (markedLocation != nil){

        
        CLLocationDistance distance = [newLocation distanceFromLocation:markedLocation.location];

        self.markedLatLabel.text = [NSString stringWithFormat:@"%f", markedLocation.coordinate.latitude];
        self.markedLongLabel.text = [NSString stringWithFormat:@"%f", markedLocation.coordinate.longitude];
        self.distanceToMarkLabel.text =  [NSString stringWithFormat:@"%f", distance];
    }

    self.currentLatLabel.text = [NSString stringWithFormat:@"%f", newLocation.coordinate.latitude];
    self.currentLongLabel.text = [NSString stringWithFormat:@"%f", newLocation.coordinate.longitude];
    
    
    //TODO: Fix
    MKCoordinateRegion viewRegion = MKCoordinateRegionMakeWithDistance(newLocation.coordinate, 0.3*METERS_PER_MILE, 0.3*METERS_PER_MILE);
    [self.mapView setRegion:viewRegion animated:YES];

    
}

- (void)locationManager:(CLLocationManager *)manager
       didFailWithError:(NSError *)error
{
	NSLog(@"Error: %@", [error description]);
}


#pragma mark - MapKit

- (MKAnnotationView *)mapView:(MKMapView *)mapView viewForAnnotation:(id<MKAnnotation>)annotation {
    //7
    if([annotation isKindOfClass:[MKUserLocation class]])
        return nil;
    
    //8
    static NSString *identifier = @"GGAnnotation";
    MKPinAnnotationView * annotationView = (MKPinAnnotationView*)[self.mapView dequeueReusableAnnotationViewWithIdentifier:identifier];
    if (!annotationView)
    {
        //9
        annotationView = [[MKPinAnnotationView alloc] initWithAnnotation:annotation reuseIdentifier:identifier];
        annotationView.pinColor = MKPinAnnotationColorPurple;
        annotationView.animatesDrop = YES;
        annotationView.canShowCallout = YES;
    }else {
        annotationView.annotation = annotation;
    }
    annotationView.rightCalloutAccessoryView = [UIButton buttonWithType:UIButtonTypeDetailDisclosure];
    return annotationView;
}


@end
