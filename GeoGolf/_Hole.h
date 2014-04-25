// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to Hole.h instead.

#import <CoreData/CoreData.h>


extern const struct HoleAttributes {
	__unsafe_unretained NSString *bearing;
	__unsafe_unretained NSString *name;
	__unsafe_unretained NSString *par;
} HoleAttributes;

extern const struct HoleRelationships {
	__unsafe_unretained NSString *course;
	__unsafe_unretained NSString *pins;
} HoleRelationships;

extern const struct HoleFetchedProperties {
} HoleFetchedProperties;

@class Course;
@class Pin;





@interface HoleID : NSManagedObjectID {}
@end

@interface _Hole : NSManagedObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
- (HoleID*)objectID;





@property (nonatomic, strong) NSNumber* bearing;



@property double bearingValue;
- (double)bearingValue;
- (void)setBearingValue:(double)value_;

//- (BOOL)validateBearing:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSString* name;



//- (BOOL)validateName:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* par;



@property int16_t parValue;
- (int16_t)parValue;
- (void)setParValue:(int16_t)value_;

//- (BOOL)validatePar:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) Course *course;

//- (BOOL)validateCourse:(id*)value_ error:(NSError**)error_;




@property (nonatomic, strong) NSSet *pins;

- (NSMutableSet*)pinsSet;





@end

@interface _Hole (CoreDataGeneratedAccessors)

- (void)addPins:(NSSet*)value_;
- (void)removePins:(NSSet*)value_;
- (void)addPinsObject:(Pin*)value_;
- (void)removePinsObject:(Pin*)value_;

@end

@interface _Hole (CoreDataGeneratedPrimitiveAccessors)


- (NSNumber*)primitiveBearing;
- (void)setPrimitiveBearing:(NSNumber*)value;

- (double)primitiveBearingValue;
- (void)setPrimitiveBearingValue:(double)value_;




- (NSString*)primitiveName;
- (void)setPrimitiveName:(NSString*)value;




- (NSNumber*)primitivePar;
- (void)setPrimitivePar:(NSNumber*)value;

- (int16_t)primitiveParValue;
- (void)setPrimitiveParValue:(int16_t)value_;





- (Course*)primitiveCourse;
- (void)setPrimitiveCourse:(Course*)value;



- (NSMutableSet*)primitivePins;
- (void)setPrimitivePins:(NSMutableSet*)value;


@end
