//
//  AddDataViewController.h
//  Tomany_Relationship_Demo
//
//  Created by Akash Sarnaik on 24/04/15.
//  Copyright (c) 2015 eZest. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AddDataViewController : UIViewController<UITextFieldDelegate>
- (IBAction)cancelButtonTapped:(id)sender;

@property (strong, nonatomic) IBOutlet UITextField *companyNameTextField;

@property (strong, nonatomic) IBOutlet UISwitch *switchPune;
@property (strong, nonatomic) IBOutlet UISwitch *switchNagpur;
@property (strong, nonatomic) IBOutlet UISwitch *switchMumbai;
@property (strong, nonatomic) IBOutlet UISwitch *switchAhmadabad;
@property (strong, nonatomic) IBOutlet UISwitch *switchDelhi;
@property (strong, nonatomic) IBOutlet UISwitch *switchBanglore;

@property (strong, nonatomic) IBOutlet UISwitch *switchNoida;
@property (strong, nonatomic) IBOutlet UISwitch *switchChennai;
@property (strong, nonatomic) IBOutlet UISwitch *switchIndore;


- (IBAction)addDataButtonTapped:(id)sender;

@end
