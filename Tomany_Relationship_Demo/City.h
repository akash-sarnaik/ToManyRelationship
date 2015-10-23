//
//  City.h
//  Tomany_Relationship_Demo
//
//  Created by Akash Sarnaik on 24/04/15.
//  Copyright (c) 2015 eZest. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Company;

@interface City : NSManagedObject

@property (nonatomic, retain) NSString * cityName_Attribute;
@property (nonatomic, retain) NSSet *companyRel;
@end

@interface City (CoreDataGeneratedAccessors)

- (void)addCompanyRelObject:(Company *)value;
- (void)removeCompanyRelObject:(Company *)value;
- (void)addCompanyRel:(NSSet *)values;
- (void)removeCompanyRel:(NSSet *)values;

@end
