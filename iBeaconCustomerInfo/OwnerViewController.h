//
//  OwnerViewController.h
//  iBeaconCustomerInfo
//
//  Created by Ryan Huynh on 6/12/16.
//  Copyright © 2016 Info Way. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface OwnerViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *room1;
@property (weak, nonatomic) IBOutlet UILabel *room2;
@property (weak, nonatomic) IBOutlet UILabel *room3;
@property (weak, nonatomic) IBOutlet UITextField *room1UUID;
@property (weak, nonatomic) IBOutlet UITextField *room2UUID;
@property (weak, nonatomic) IBOutlet UITextField *room3UUID;

- (IBAction)Config:(id)sender;
- (IBAction)signOut:(id)sender;

@end
