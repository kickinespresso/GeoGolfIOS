//
//  GGAnnotation.m
//  GeoGolf
//
//  Created by cj on 12/10/13.
//  Copyright (c) 2013 KickinEspresso. All rights reserved.
//

#import "GGAnnotation.h"

@implementation GGAnnotation

@synthesize location;

- (id) initWithCoordinate:(CLLocationCoordinate2D)coordinate title:(NSString *)title {
    if ((self = [super init])) {
        self.coordinate = coordinate;
        self.title = title;
        self.location = [[CLLocation alloc] initWithLatitude:self.coordinate.latitude
                                                   longitude:self.coordinate.longitude];
    }
    return self;
}

@end
