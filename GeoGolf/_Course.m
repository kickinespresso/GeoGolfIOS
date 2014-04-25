// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to Course.m instead.

#import "_Course.h"

const struct CourseAttributes CourseAttributes = {
	.created = @"created",
	.detail = @"detail",
	.name = @"name",
	.updated = @"updated",
};

const struct CourseRelationships CourseRelationships = {
	.holes = @"holes",
};

const struct CourseFetchedProperties CourseFetchedProperties = {
};

@implementation CourseID
@end

@implementation _Course

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"Course" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"Course";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"Course" inManagedObjectContext:moc_];
}

- (CourseID*)objectID {
	return (CourseID*)[super objectID];
}

+ (NSSet*)keyPathsForValuesAffectingValueForKey:(NSString*)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];
	

	return keyPaths;
}




@dynamic created;






@dynamic detail;






@dynamic name;






@dynamic updated;






@dynamic holes;

	
- (NSMutableSet*)holesSet {
	[self willAccessValueForKey:@"holes"];
  
	NSMutableSet *result = (NSMutableSet*)[self mutableSetValueForKey:@"holes"];
  
	[self didAccessValueForKey:@"holes"];
	return result;
}
	






@end
