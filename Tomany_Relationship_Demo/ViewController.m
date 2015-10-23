//
//  ViewController.m
//  Tomany_Relationship_Demo
//
//  Created by Akash Sarnaik on 24/04/15.
//  Copyright (c) 2015 eZest. All rights reserved.
//

#import "ViewController.h"
#import "CompanyTableViewController.h"
#import "CityTableViewController.h"
#import "AddDataViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)companyButtonTapped:(id)sender {
    CompanyTableViewController *ctvc = [self.storyboard instantiateViewControllerWithIdentifier:@"CompanyTableViewController"];
    [self presentViewController:ctvc animated:YES completion:nil];
}

- (IBAction)cityButtonTapped:(id)sender {
    CityTableViewController *ctvc = [self.storyboard instantiateViewControllerWithIdentifier:@"CityTableViewController"];
    [self presentViewController:ctvc animated:YES completion:nil];
}

- (IBAction)AddDataButtonTapped:(id)sender {
    AddDataViewController *ctvc = [self.storyboard instantiateViewControllerWithIdentifier:@"AddDataViewController"];
    [self presentViewController:ctvc animated:YES completion:nil];
}
@end
