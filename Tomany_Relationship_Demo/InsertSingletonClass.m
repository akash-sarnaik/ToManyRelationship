//
//  InsertSingletonClass.m
//  Tomany_Relationship_Demo
//
//  Created by Akash Sarnaik on 29/04/15.
//  Copyright (c) 2015 eZest. All rights reserved.
//

#import "InsertSingletonClass.h"

@implementation InsertSingletonClass
static City *cityNagpur = NULL;
static City *cityAhmadabad = NULL;
static City *cityBanglore = NULL;
static City *cityChennai = NULL;
static City *cityIndore = NULL;
static City *cityPune = NULL;
static City *cityMumbai = NULL;
static City *cityDelhi = NULL;
static City *cityNoida = NULL;
static NSManagedObjectContext *context = NULL;


+(City *)getPuneInstance{
    
    if(cityPune == NULL){
        
        cityPune =[NSEntityDescription insertNewObjectForEntityForName:@"City" inManagedObjectContext:[self getManagedContextInstance]];
    }
    return  cityPune;
}

+(City *)getNagpurInstance{
    
    if(cityNagpur == NULL){
        
        cityNagpur =[NSEntityDescription insertNewObjectForEntityForName:@"City" inManagedObjectContext:[self getManagedContextInstance]];
    }
    return  cityNagpur;
}

+(City *)getMumbaiInstance{
    
    if(cityMumbai == NULL){
        
        cityMumbai =[NSEntityDescription insertNewObjectForEntityForName:@"City" inManagedObjectContext:[self getManagedContextInstance]];
    }
    return  cityPune;
}

+(City *)getIndoreInstance{
    
    if(cityIndore == NULL){
        
        cityIndore =[NSEntityDescription insertNewObjectForEntityForName:@"City" inManagedObjectContext:[self getManagedContextInstance]];
    }
    return  cityIndore;
}

+(City *)getAhmadabadInstance{
    
    if(cityAhmadabad == NULL){
        
        cityAhmadabad =[NSEntityDescription insertNewObjectForEntityForName:@"City" inManagedObjectContext:[self getManagedContextInstance]];
    }
    return  cityAhmadabad;
}

+(City *)getBangloreInstance{
    
    if(cityBanglore == NULL){
        
        cityBanglore =[NSEntityDescription insertNewObjectForEntityForName:@"City" inManagedObjectContext:[self getManagedContextInstance]];
    }
    return  cityBanglore;
}

+(City *)getDelhiInstance{
    
    if(cityDelhi == NULL){
        
        cityDelhi =[NSEntityDescription insertNewObjectForEntityForName:@"City" inManagedObjectContext:[self getManagedContextInstance]];
    }
    return  cityDelhi;
}

+(City *)getNoidaInstance{
    
    if(cityNoida == NULL){
        
        cityNoida =[NSEntityDescription insertNewObjectForEntityForName:@"City" inManagedObjectContext:[self getManagedContextInstance]];
    }
    return  cityNoida;
}

+(City *)getChennaiInstance{
    
    if(cityChennai == NULL){
        
        cityChennai =[NSEntityDescription insertNewObjectForEntityForName:@"City" inManagedObjectContext:[self getManagedContextInstance]];
    }
    return  cityChennai;
}

+(NSManagedObjectContext *)getManagedContextInstance{
    if(context == NULL){
        AppDelegate *app = [[UIApplication sharedApplication]delegate];
        context  = app.managedObjectContext;
    }
    return context;
}
@end
