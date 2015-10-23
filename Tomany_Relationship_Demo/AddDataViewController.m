//
//  AddDataViewController.m
//  Tomany_Relationship_Demo
//
//  Created by Akash Sarnaik on 24/04/15.
//  Copyright (c) 2015 eZest. All rights reserved.
//

#import "AddDataViewController.h"
#import "Company.h"
#import "City.h"
#import "AppDelegate.h"
//#import "InsertSingletonClass.h"

@interface AddDataViewController ()

@end

@implementation AddDataViewController
City * cityAhmadabad = NULL;
City * cityPune = NULL;
City * cityMumbai = NULL;
City * cityNagpur = NULL;
City * cityDelhi = NULL;
City * cityBanglore = NULL;
City * cityNoida = NULL;
City * cityChennai = NULL;
City * cityIndore = NULL;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.companyNameTextField.delegate = self;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    if(textField == self.companyNameTextField){
        [self.companyNameTextField resignFirstResponder];
    }
    return YES;
}


- (IBAction)addDataButtonTapped:(id)sender {
    
    AppDelegate *app = [[UIApplication sharedApplication]delegate];
    NSManagedObjectContext *context = app.managedObjectContext;
    
    Company *company = [NSEntityDescription insertNewObjectForEntityForName:@"Company" inManagedObjectContext:context];
    company.companyName_Attribute = self.companyNameTextField.text;
    
    if(self.switchAhmadabad.on == YES){
        if(cityAhmadabad == NULL){
         cityAhmadabad = [NSEntityDescription insertNewObjectForEntityForName:@"City" inManagedObjectContext:context];
            cityAhmadabad.cityName_Attribute = @"Ahmadabad";
        [cityAhmadabad addCompanyRelObject:company];
        [company addCityRelObject:cityAhmadabad];
    }else{
        [cityAhmadabad addCompanyRelObject:company];
        [company addCityRelObject:cityAhmadabad];
    }
      /*  cityAhmadabad = [InsertSingletonClass getAhmadabadInstance];
        [cityAhmadabad addCompanyRelObject:company];
        [company addCityRelObject:cityAhmadabad];*/
    }
    
    
    //Banglore
    
    if(self.switchBanglore.on == YES){
       if(cityBanglore== NULL){
            cityBanglore = [NSEntityDescription insertNewObjectForEntityForName:@"City" inManagedObjectContext:context];
            cityBanglore.cityName_Attribute = @"Banglore";
            [cityBanglore addCompanyRelObject:company];
            [company addCityRelObject:cityBanglore];
        }else{
            [cityBanglore addCompanyRelObject:company];
            [company addCityRelObject:cityBanglore];
        }
     /*   cityBanglore = [InsertSingletonClass getBangloreInstance];
        [cityBanglore addCompanyRelObject:company];
        [company addCityRelObject:cityBanglore];*/
    }

    //Chennai
    
    if(self.switchChennai.on == YES){
        if(cityChennai== NULL){
            cityChennai = [NSEntityDescription insertNewObjectForEntityForName:@"City" inManagedObjectContext:context];
            cityChennai.cityName_Attribute = @"Chennai";
            [cityChennai addCompanyRelObject:company];
            [company addCityRelObject:cityChennai];
        }else{
            [cityChennai addCompanyRelObject:company];
            [company addCityRelObject:cityChennai];
        }
        /*cityChennai = [InsertSingletonClass getChennaiInstance];
        [cityChennai addCompanyRelObject:company];
        [company addCityRelObject:cityChennai];*/
    }
    
    //Pune
    
    if(self.switchPune.on == YES){
       if(cityPune== NULL){
            cityPune = [NSEntityDescription insertNewObjectForEntityForName:@"City" inManagedObjectContext:context];
            cityPune.cityName_Attribute = @"Pune";
            [cityPune addCompanyRelObject:company];
            [company addCityRelObject:cityPune];
        }else{
            [cityPune addCompanyRelObject:company];
            [company addCityRelObject:cityPune];
        }
      /*  cityPune = [InsertSingletonClass getPuneInstance];
        [cityPune addCompanyRelObject:company];
        [company addCityRelObject:cityPune];*/
    }

    //Nagpur    
    
    if(self.switchNagpur.on == YES){
       if(cityNagpur== NULL){
            cityNagpur = [NSEntityDescription insertNewObjectForEntityForName:@"City" inManagedObjectContext:context];
            cityNagpur.cityName_Attribute = @"Nagpur";
            [cityNagpur addCompanyRelObject:company];
            [company addCityRelObject:cityNagpur];
        }else{
            [cityNagpur addCompanyRelObject:company];
            [company addCityRelObject:cityNagpur];
        }
       /* cityNagpur = [InsertSingletonClass getNagpurInstance];
        [cityNagpur addCompanyRelObject:company];
        [company addCityRelObject:cityNagpur];*/
    }
    
    //Mumbai
    
    if(self.switchMumbai.on == YES){
        if(cityMumbai== NULL){
            cityMumbai = [NSEntityDescription insertNewObjectForEntityForName:@"City" inManagedObjectContext:context];
            cityMumbai.cityName_Attribute = @"Mumbai";
            [cityMumbai addCompanyRelObject:company];
            [company addCityRelObject:cityMumbai];
        }else{
            [cityMumbai addCompanyRelObject:company];
            [company addCityRelObject:cityMumbai];
        }
        /*cityMumbai = [InsertSingletonClass getMumbaiInstance];
        [cityMumbai addCompanyRelObject:company];
        [company addCityRelObject:cityMumbai];*/
    }
    
    //Delhi
    
    if(self.switchDelhi.on == YES){
       if(cityDelhi== NULL){
            cityDelhi = [NSEntityDescription insertNewObjectForEntityForName:@"City" inManagedObjectContext:context];
            cityDelhi.cityName_Attribute = @"Delhi";
            [cityDelhi addCompanyRelObject:company];
            [company addCityRelObject:cityDelhi];
        }else{
            [cityDelhi addCompanyRelObject:company];
            [company addCityRelObject:cityDelhi];
        }/*
        cityDelhi = [InsertSingletonClass getDelhiInstance];
        [cityDelhi addCompanyRelObject:company];
        [company addCityRelObject:cityDelhi];*/
    }

    //Noida
    
    if(self.switchNoida.on == YES){
        if(cityNoida== NULL){
            cityNoida = [NSEntityDescription insertNewObjectForEntityForName:@"City" inManagedObjectContext:context];
            cityNoida.cityName_Attribute = @"Noida";
            [cityNoida addCompanyRelObject:company];
            [company addCityRelObject:cityNoida];
        }else{
            [cityNoida addCompanyRelObject:company];
            [company addCityRelObject:cityNoida];
        }/*
        cityNoida = [InsertSingletonClass getNoidaInstance];
        [cityNoida addCompanyRelObject:company];
        [company addCityRelObject:cityNoida];*/
    }
    
    //Indore
    
    if(self.switchIndore.on == YES){
        if(cityIndore== NULL){
            cityIndore = [NSEntityDescription insertNewObjectForEntityForName:@"City" inManagedObjectContext:context];
            cityIndore.cityName_Attribute = @"Indore";
            [cityIndore addCompanyRelObject:company];
            [company addCityRelObject:cityIndore];
        }else{
            [cityIndore addCompanyRelObject:company];
            [company addCityRelObject:cityIndore];
        }
     /*   cityIndore = [InsertSingletonClass getIndoreInstance];
        [cityIndore addCompanyRelObject:company];
        [company addCityRelObject:cityIndore];*/
    }
    
    NSError *error;
    if (![context save:&error]) {
        NSLog(@"Whoops, couldn't save           ************************   : %@", [error localizedDescription]);
        
    }
    
    [self dismissViewControllerAnimated:YES completion:nil];
}
- (IBAction)cancelButtonTapped:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
