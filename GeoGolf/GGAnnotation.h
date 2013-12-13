//
//  GGAnnotation.h
//  GeoGolf
//
//  Created by cj on 12/10/13.
//  Copyright (c) 2013 KickinEspresso. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>
#import <CoreLocation/CoreLocation.h>

@interface GGAnnotation : NSObject <MKAnnotation>

@property (strong, nonatomic) NSString *title;
@property (nonatomic,assign) CLLocationCoordinate2D coordinate;
@property (strong,nonatomic) CLLocation* location;

- (id) initWithCoordinate:(CLLocationCoordinate2D)coordinate title:(NSString *)title;

@end
