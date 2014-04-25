// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to Pin.m instead.

#import "_Pin.h"

const struct PinAttributes PinAttributes = {
	.altitude = @"altitude",
	.bearing = @"bearing",
	.latitude = @"latitude",
	.longitude = @"longitude",
	.name = @"name",
	.order = @"order",
};

const struct PinRelationships PinRelationships = {
	.hole = @"hole",
};

const struct PinFetchedProperties PinFetchedProperties = {
};

@implementation PinID
@end

@implementation _Pin

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"Pin" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"Pin";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"Pin" inManagedObjectContext:moc_];
}

- (PinID*)objectID {
	return (PinID*)[super objectID];
}

+ (NSSet*)keyPathsForValuesAffectingValueForKey:(NSString*)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];
	
	if ([key isEqualToString:@"altitudeValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"altitude"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"bearingValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"bearing"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"latitudeValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"latitude"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"longitudeValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"longitude"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}

	return keyPaths;
}




@dynamic altitude;



- (double)altitudeValue {
	NSNumber *result = [self altitude];
	return [result doubleValue];
}

- (void)setAltitudeValue:(double)value_ {
	[self setAltitude:[NSNumber numberWithDouble:value_]];
}

- (double)primitiveAltitudeValue {
	NSNumber *result = [self primitiveAltitude];
	return [result doubleValue];
}

- (void)setPrimitiveAltitudeValue:(double)value_ {
	[self setPrimitiveAltitude:[NSNumber numberWithDouble:value_]];
}





@dynamic bearing;



- (double)bearingValue {
	NSNumber *result = [self bearing];
	return [result doubleValue];
}

- (void)setBearingValue:(double)value_ {
	[self setBearing:[NSNumber numberWithDouble:value_]];
}

- (double)primitiveBearingValue {
	NSNumber *result = [self primitiveBearing];
	return [result doubleValue];
}

- (void)setPrimitiveBearingValue:(double)value_ {
	[self setPrimitiveBearing:[NSNumber numberWithDouble:value_]];
}





@dynamic latitude;



- (double)latitudeValue {
	NSNumber *result = [self latitude];
	return [result doubleValue];
}

- (void)setLatitudeValue:(double)value_ {
	[self setLatitude:[NSNumber numberWithDouble:value_]];
}

- (double)primitiveLatitudeValue {
	NSNumber *result = [self primitiveLatitude];
	return [result doubleValue];
}

- (void)setPrimitiveLatitudeValue:(double)value_ {
	[self setPrimitiveLatitude:[NSNumber numberWithDouble:value_]];
}





@dynamic longitude;



- (double)longitudeValue {
	NSNumber *result = [self longitude];
	return [result doubleValue];
}

- (void)setLongitudeValue:(double)value_ {
	[self setLongitude:[NSNumber numberWithDouble:value_]];
}

- (double)primitiveLongitudeValue {
	NSNumber *result = [self primitiveLongitude];
	return [result doubleValue];
}

- (void)setPrimitiveLongitudeValue:(double)value_ {
	[self setPrimitiveLongitude:[NSNumber numberWithDouble:value_]];
}





@dynamic name;






@dynamic order;






@dynamic hole;

	






@end
