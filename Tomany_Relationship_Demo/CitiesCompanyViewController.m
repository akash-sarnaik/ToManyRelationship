//
//  CitiesCompanyViewController.m
//  Tomany_Relationship_Demo
//
//  Created by Akash Sarnaik on 24/04/15.
//  Copyright (c) 2015 eZest. All rights reserved.
//

#import "CitiesCompanyViewController.h"
#import "Company.h"
#import "AppDelegate.h"

@interface CitiesCompanyViewController ()

@end

@implementation CitiesCompanyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.companyTableView.delegate = self;
    self.companyTableView.dataSource = self;
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
    NSPredicate *predicate  = [NSPredicate predicateWithFormat:@"cityRel.cityName_Attribute CONTAINS %@",self.name];
    [request setPredicate:predicate];
  //  NSSortDescriptor *sortDescriptor = [[NSSortDescriptor alloc]initWithKey:@"firstName_Attribute" ascending:YES];
  //  [request setReturnsDistinctResults:YES];
   // NSLog(@"SortDescriptor ::: %@",sortDescriptor);
    
   // [request setSortDescriptors:[NSArray arrayWithObject:sortDescriptor]];
    NSError *error;
    companyArray = [context executeFetchRequest:request error:&error];
    [self.companyTableView reloadData];
}


/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [companyArray count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *mycell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:nil];
    
    Company *company= [companyArray objectAtIndex:indexPath.row];
    mycell.textLabel.text = company.companyName_Attribute;
    // mycell.detailTextLabel.text = person.lastName_Attribute;
    
    mycell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    return mycell;
}
/*
 - (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
 NSLog(@"Selected Row is %ld",(long)indexPath.row);
 PersonDetailsViewController *pdvc = [self.storyboard instantiateViewControllerWithIdentifier:@"PersonDetailsViewController"];
 // uvc.mobile = [mobileArray objectAtIndex: indexPath.row];
 UITableViewCell *cell = [self.personTableView cellForRowAtIndexPath:(indexPath)];
 NSLog(@"Selected Name ::: %@",cell.textLabel.text);
 
 // uvc.row = [NSNumber numberWithInt:indexPath.row];
 pdvc.name = cell.textLabel.text;
 [self presentViewController:pdvc animated:YES completion:nil];
 
 }
 
 
 */

- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath{
    return  YES;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath{
    row = indexPath.row;
    
    UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Confirmation" message:@"Are u sure u want to delete the given Mobile..??" delegate:self cancelButtonTitle:nil otherButtonTitles:@"Yeh",@"No",nil];
    [alert show];
}

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
    if(buttonIndex == 0){
        Company *company  = [companyArray objectAtIndex:row];
        AppDelegate *appdelegate  = [[UIApplication sharedApplication]delegate];
        NSManagedObjectContext *context = appdelegate.managedObjectContext;
        [context deleteObject:(NSManagedObject *)company];
        
        NSError *error;
        if([context save:&error]==NO){
            NSLog(@"Error with deleting objects %@",[error localizedDescription]);
        }
        [self refreshdatafromDB];
    }else{
        
    }
    
}

- (IBAction)backButtonTapped:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
