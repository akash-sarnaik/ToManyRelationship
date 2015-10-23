//
//  CityTableViewController.h
//  Tomany_Relationship_Demo
//
//  Created by Akash Sarnaik on 24/04/15.
//  Copyright (c) 2015 eZest. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CityTableViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>{
    NSArray *cityArray;
    NSInteger row;
}
- (IBAction)backButtonTapped:(id)sender;
@property (strong, nonatomic) IBOutlet UITableView *cityTableView;

@end
