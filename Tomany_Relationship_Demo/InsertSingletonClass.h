//
//  InsertSingletonClass.h
//  Tomany_Relationship_Demo
//
//  Created by Akash Sarnaik on 29/04/15.
//  Copyright (c) 2015 eZest. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Company.h"
#import "City.h"
#import "AppDelegate.h"

@interface InsertSingletonClass : NSObject
+(City *)getPuneInstance;
+(City *)getMumbaiInstance;
+(City *)getDelhiInstance;
+(City *)getNoidaInstance;
+(City *)getIndoreInstance;
+(City *)getNagpurInstance;
+(City *)getAhmadabadInstance;
+(City *)getBangloreInstance;
+(City *)getChennaiInstance;

+(NSManagedObjectContext *)getManagedContextInstance;

@end
