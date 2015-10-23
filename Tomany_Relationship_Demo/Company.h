//
//  Company.h
//  Tomany_Relationship_Demo
//
//  Created by Akash Sarnaik on 24/04/15.
//  Copyright (c) 2015 eZest. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Company : NSManagedObject

@property (nonatomic, retain) NSString * companyName_Attribute;
@property (nonatomic, retain) NSSet *cityRel;
@end

@interface Company (CoreDataGeneratedAccessors)

- (void)addCityRelObject:(NSManagedObject *)value;
- (void)removeCityRelObject:(NSManagedObject *)value;
- (void)addCityRel:(NSSet *)values;
- (void)removeCityRel:(NSSet *)values;

@end
