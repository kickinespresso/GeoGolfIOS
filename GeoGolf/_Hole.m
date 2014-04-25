// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to Hole.m instead.

#import "_Hole.h"

const struct HoleAttributes HoleAttributes = {
	.bearing = @"bearing",
	.name = @"name",
	.par = @"par",
};

const struct HoleRelationships HoleRelationships = {
	.course = @"course",
	.pins = @"pins",
};

const struct HoleFetchedProperties HoleFetchedProperties = {
};

@implementation HoleID
@end

@implementation _Hole

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"Hole" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"Hole";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"Hole" inManagedObjectContext:moc_];
}

- (HoleID*)objectID {
	return (HoleID*)[super objectID];
}

+ (NSSet*)keyPathsForValuesAffectingValueForKey:(NSString*)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];
	
	if ([key isEqualToString:@"bearingValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"bearing"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"parValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"par"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}

	return keyPaths;
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





@dynamic name;






@dynamic par;



- (int16_t)parValue {
	NSNumber *result = [self par];
	return [result shortValue];
}

- (void)setParValue:(int16_t)value_ {
	[self setPar:[NSNumber numberWithShort:value_]];
}

- (int16_t)primitiveParValue {
	NSNumber *result = [self primitivePar];
	return [result shortValue];
}

- (void)setPrimitiveParValue:(int16_t)value_ {
	[self setPrimitivePar:[NSNumber numberWithShort:value_]];
}





@dynamic course;

	

@dynamic pins;

	
- (NSMutableSet*)pinsSet {
	[self willAccessValueForKey:@"pins"];
  
	NSMutableSet *result = (NSMutableSet*)[self mutableSetValueForKey:@"pins"];
  
	[self didAccessValueForKey:@"pins"];
	return result;
}
	






@end
