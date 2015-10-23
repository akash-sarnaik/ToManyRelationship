//
//  UpdateDataViewController.m
//  Tomany_Relationship_Demo
//
//  Created by Akash Sarnaik on 28/04/15.
//  Copyright (c) 2015 eZest. All rights reserved.
//

#import "UpdateDataViewController.h"
#import "AppDelegate.h"
#import "Company.h"
#import "City.h"

@interface UpdateDataViewController ()

@end

@implementation UpdateDataViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.companyNameUpdateTextField.delegate = self;
    // Do any additional setup after loading the view.
}

-(void)viewWillAppear:(BOOL)animated{
    [self refreshdatafromDB];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)refreshdatafromDB{
    AppDelegate *appdeleagte  = [[UIApplication sharedApplication]delegate];
    NSManagedObjectContext *context = appdeleagte.managedObjectContext;
    NSFetchRequest *request = [[NSFetchRequest alloc]initWithEntityName:@"Company"];
    NSPredicate *predicate  = [NSPredicate predicateWithFormat:@"companyName_Attribute=%@",self.name];
    [request setPredicate:predicate];
    // NSSortDescriptor *sortDescriptor = [[NSSortDescriptor alloc]initWithKey:@"cityName_Attribute" ascending:YES];
    // [request setSortDescriptors:[NSArray arrayWithObject:sortDescriptor]];
    
    NSError *fetchError = nil;
    // NSArray *result = [[appdeleagte managedObjectContext] executeFetchRequest:request error:&fetchError];
    comapnyArray = [context executeFetchRequest:request error:&fetchError];
    
    
    // NSError *error;
    //cityArray = [context executeFetchRequest:request error:&error];
    //[self.cityTableView reloadData];
    
    
  //  NSManagedObjectContext *context = appdeleagte.managedObjectContext;
    NSFetchRequest *request2 = [[NSFetchRequest alloc]initWithEntityName:@"City"];
    NSLog(@"self.name :: %@",self.name);
    NSPredicate *predicate2  = [NSPredicate predicateWithFormat:@"companyRel.companyName_Attribute CONTAINS %@",self.name];
    [request2 setPredicate:predicate2];
    
    NSError *fetchError2 = nil;
    // NSArray *result = [[appdeleagte managedObjectContext] executeFetchRequest:request error:&fetchError];
    cityArray = [context executeFetchRequest:request2 error:&fetchError2];
    
    NSString *cityArrayString = (NSString *)cityArray ;
    
   Company *updateComp  = [comapnyArray objectAtIndex:0];
    self.companyNameUpdateTextField.text = updateComp.companyName_Attribute;
   
  
    if([[NSString stringWithFormat:@"str :: %@",cityArrayString] containsString:@"Ahmadabad"]){
        [self.ahmadabadSwitch setOn:YES animated:YES];
        }else{
         [self.ahmadabadSwitch setOn:NO animated:YES];
        }
    
   
  
    //self.companyNameUpdateTextField.text = [comapnyArray objectAtIndex:0];
    
    //Banglore
    
    if([[NSString stringWithFormat:@"str :: %@",cityArrayString] containsString:@"Banglore"]){
        [self.bangloreSwitch setOn:YES animated:YES];
    }else{
        [self.bangloreSwitch setOn:NO animated:YES];
    }


    //Chennai
    
    if([[NSString stringWithFormat:@"str :: %@",cityArrayString] containsString:@"Chennai"]){
        [self.chennaiSwitch setOn:YES animated:YES];
    }else{
        [self.chennaiSwitch setOn:NO animated:YES];
    }


    //Pune
    
    if([[NSString stringWithFormat:@"str :: %@",cityArrayString] containsString:@"Pune"]){
        [self.puneSwitch setOn:YES animated:YES];
    }else{
        [self.puneSwitch setOn:NO animated:YES];
    }


    //Nagpur
    
    if([[NSString stringWithFormat:@"str :: %@",cityArrayString] containsString:@"Nagpur"]){
        [self.nagpurSwitch setOn:YES animated:YES];
    }else{
        [self.nagpurSwitch setOn:NO animated:YES];
    }

    //Mumbai
    
    if([[NSString stringWithFormat:@"str :: %@",cityArrayString] containsString:@"Mumbai"]){
        [self.mumbaiSwitch setOn:YES animated:YES];
    }else{
        [self.mumbaiSwitch setOn:NO animated:YES];
    }

    //Delhi
    
    if([[NSString stringWithFormat:@"str :: %@",cityArrayString] containsString:@"Delhi"]){
        [self.delhiSwitch setOn:YES animated:YES];
    }else{
        [self.delhiSwitch setOn:NO animated:YES];
    }

    //Noida
    
    if([[NSString stringWithFormat:@"str :: %@",cityArrayString] containsString:@"Noida"]){
        [self.noidaSwitch setOn:YES animated:YES];
    }else{
        [self.noidaSwitch setOn:NO animated:YES];
    }


    //Indore
    
    if([[NSString stringWithFormat:@"str :: %@",cityArrayString] containsString:@"Indore"]){
        [self.indoreSwitch setOn:YES animated:YES];
    }else{
        [self.indoreSwitch setOn:NO animated:YES];
    }

    cityArrayString = NULL;
    cityArray = NULL;
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
    if(textField == self.companyNameUpdateTextField){
        [self.companyNameUpdateTextField resignFirstResponder];
    }
    return YES;
}

- (IBAction)updateDataTapped:(id)sender {
    AppDelegate *appdeleagte  = [[UIApplication sharedApplication]delegate];
    NSManagedObjectContext *context = appdeleagte.managedObjectContext;
    NSFetchRequest *request = [[NSFetchRequest alloc]initWithEntityName:@"Company"];
    NSPredicate *predicate  = [NSPredicate predicateWithFormat:@"companyName_Attribute=%@",self.name];
    [request setPredicate:predicate];
    // NSSortDescriptor *sortDescriptor = [[NSSortDescriptor alloc]initWithKey:@"cityName_Attribute" ascending:YES];
    // [request setSortDescriptors:[NSArray arrayWithObject:sortDescriptor]];
    
    NSError *fetchError = nil;
    // NSArray *result = [[appdeleagte managedObjectContext] executeFetchRequest:request error:&fetchError];
    comapnyArray = [context executeFetchRequest:request error:&fetchError];
    
    
    // NSError *error;
    //cityArray = [context executeFetchRequest:request error:&error];
    //[self.cityTableView reloadData];
    
    
    //  NSManagedObjectContext *context = appdeleagte.managedObjectContext;
    NSFetchRequest *request2 = [[NSFetchRequest alloc]initWithEntityName:@"City"];
    NSPredicate *predicate2  = [NSPredicate predicateWithFormat:@"companyRel.companyName_Attribute CONTAINS %@",self.name];
    [request setPredicate:predicate2];
    
    NSError *fetchError2 = nil;
    // NSArray *result = [[appdeleagte managedObjectContext] executeFetchRequest:request error:&fetchError];
    cityArray = [context executeFetchRequest:request2 error:&fetchError2];
    
    NSString *cityArrayString = (NSString *)cityArray ;
    
    Company *updateComp  = [comapnyArray objectAtIndex:0];
    updateComp.companyName_Attribute = self.companyNameUpdateTextField.text;
    
    
    
   /* if(self.ahmadabadSwitch.on == YES){
        
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
        }
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
        }
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
    }
    
    NSError *error;
    if (![context save:&error]) {
        NSLog(@"Whoops, couldn't save           ************************   : %@", [error localizedDescription]);
        
    }
    
    [self dismissViewControllerAnimated:YES completion:nil];
}*/
    [self dismissViewControllerAnimated:YES completion:nil];
}
    
- (IBAction)backButtonTapped:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
