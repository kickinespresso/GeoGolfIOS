// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to Pin.h instead.

#import <CoreData/CoreData.h>


extern const struct PinAttributes {
	__unsafe_unretained NSString *altitude;
	__unsafe_unretained NSString *bearing;
	__unsafe_unretained NSString *latitude;
	__unsafe_unretained NSString *longitude;
	__unsafe_unretained NSString *name;
	__unsafe_unretained NSString *order;
} PinAttributes;

extern const struct PinRelationships {
	__unsafe_unretained NSString *hole;
} PinRelationships;

extern const struct PinFetchedProperties {
} PinFetchedProperties;

@class Hole;








@interface PinID : NSManagedObjectID {}
@end

@interface _Pin : NSManagedObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
- (PinID*)objectID;





@property (nonatomic, strong) NSNumber* altitude;



@property double altitudeValue;
- (double)altitudeValue;
- (void)setAltitudeValue:(double)value_;

//- (BOOL)validateAltitude:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* bearing;



@property double bearingValue;
- (double)bearingValue;
- (void)setBearingValue:(double)value_;

//- (BOOL)validateBearing:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* latitude;



@property double latitudeValue;
- (double)latitudeValue;
- (void)setLatitudeValue:(double)value_;

//- (BOOL)validateLatitude:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* longitude;



@property double longitudeValue;
- (double)longitudeValue;
- (void)setLongitudeValue:(double)value_;

//- (BOOL)validateLongitude:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSString* name;



//- (BOOL)validateName:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSString* order;



//- (BOOL)validateOrder:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) Hole *hole;

//- (BOOL)validateHole:(id*)value_ error:(NSError**)error_;





@end

@interface _Pin (CoreDataGeneratedAccessors)

@end

@interface _Pin (CoreDataGeneratedPrimitiveAccessors)


- (NSNumber*)primitiveAltitude;
- (void)setPrimitiveAltitude:(NSNumber*)value;

- (double)primitiveAltitudeValue;
- (void)setPrimitiveAltitudeValue:(double)value_;




- (NSNumber*)primitiveBearing;
- (void)setPrimitiveBearing:(NSNumber*)value;

- (double)primitiveBearingValue;
- (void)setPrimitiveBearingValue:(double)value_;




- (NSNumber*)primitiveLatitude;
- (void)setPrimitiveLatitude:(NSNumber*)value;

- (double)primitiveLatitudeValue;
- (void)setPrimitiveLatitudeValue:(double)value_;




- (NSNumber*)primitiveLongitude;
- (void)setPrimitiveLongitude:(NSNumber*)value;

- (double)primitiveLongitudeValue;
- (void)setPrimitiveLongitudeValue:(double)value_;




- (NSString*)primitiveName;
- (void)setPrimitiveName:(NSString*)value;




- (NSString*)primitiveOrder;
- (void)setPrimitiveOrder:(NSString*)value;





- (Hole*)primitiveHole;
- (void)setPrimitiveHole:(Hole*)value;


@end
