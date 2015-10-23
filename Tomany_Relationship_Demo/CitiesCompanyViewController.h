//
//  CitiesCompanyViewController.h
//  Tomany_Relationship_Demo
//
//  Created by Akash Sarnaik on 24/04/15.
//  Copyright (c) 2015 eZest. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CitiesCompanyViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>{
    NSArray *companyArray;
    NSInteger row;
}
- (IBAction)backButtonTapped:(id)sender;
@property (strong, nonatomic) IBOutlet UITableView *companyTableView;
@property (strong, nonatomic) NSString *name;

@end
