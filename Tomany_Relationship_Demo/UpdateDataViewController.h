//
//  UpdateDataViewController.h
//  Tomany_Relationship_Demo
//
//  Created by Akash Sarnaik on 28/04/15.
//  Copyright (c) 2015 eZest. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UpdateDataViewController : UIViewController<UITextFieldDelegate>{
    NSArray *comapnyArray;
    NSArray *cityArray;
    
    
}

- (IBAction)backButtonTapped:(id)sender;

@property (strong, nonatomic) IBOutlet UITextField *companyNameUpdateTextField;
@property (strong, nonatomic) IBOutlet UISwitch *puneSwitch;

@property (strong, nonatomic) IBOutlet UISwitch *nagpurSwitch;

@property (strong, nonatomic) IBOutlet UISwitch *mumbaiSwitch;

@property (strong, nonatomic) IBOutlet UISwitch *ahmadabadSwitch;

@property (strong, nonatomic) IBOutlet UISwitch *delhiSwitch;
@property (strong, nonatomic) IBOutlet UISwitch *bangloreSwitch;
@property (strong, nonatomic) IBOutlet UISwitch *noidaSwitch;

@property (strong, nonatomic) IBOutlet UISwitch *chennaiSwitch;
@property (strong, nonatomic) IBOutlet UISwitch *indoreSwitch;
@property (strong,nonatomic) NSString *name;

- (IBAction)updateDataTapped:(id)sender;
@end
