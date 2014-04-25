// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to Course.h instead.

#import <CoreData/CoreData.h>


extern const struct CourseAttributes {
	__unsafe_unretained NSString *created;
	__unsafe_unretained NSString *detail;
	__unsafe_unretained NSString *name;
	__unsafe_unretained NSString *updated;
} CourseAttributes;

extern const struct CourseRelationships {
	__unsafe_unretained NSString *holes;
} CourseRelationships;

extern const struct CourseFetchedProperties {
} CourseFetchedProperties;

@class Hole;






@interface CourseID : NSManagedObjectID {}
@end

@interface _Course : NSManagedObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
- (CourseID*)objectID;





@property (nonatomic, strong) NSDate* created;



//- (BOOL)validateCreated:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSString* detail;



//- (BOOL)validateDetail:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSString* name;



//- (BOOL)validateName:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSString* updated;



//- (BOOL)validateUpdated:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSSet *holes;

- (NSMutableSet*)holesSet;





@end

@interface _Course (CoreDataGeneratedAccessors)

- (void)addHoles:(NSSet*)value_;
- (void)removeHoles:(NSSet*)value_;
- (void)addHolesObject:(Hole*)value_;
- (void)removeHolesObject:(Hole*)value_;

@end

@interface _Course (CoreDataGeneratedPrimitiveAccessors)


- (NSDate*)primitiveCreated;
- (void)setPrimitiveCreated:(NSDate*)value;




- (NSString*)primitiveDetail;
- (void)setPrimitiveDetail:(NSString*)value;




- (NSString*)primitiveName;
- (void)setPrimitiveName:(NSString*)value;




- (NSString*)primitiveUpdated;
- (void)setPrimitiveUpdated:(NSString*)value;





- (NSMutableSet*)primitiveHoles;
- (void)setPrimitiveHoles:(NSMutableSet*)value;


@end
