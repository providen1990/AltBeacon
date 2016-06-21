//
//  OwnerLoginViewController.h
//  iBeaconCustomerInfo
//
//  Created by Ryan Huynh on 6/9/16.
//  Copyright © 2016 Info Way. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Firebase/Firebase.h>
@interface OwnerLoginViewController : UIViewController
- (IBAction)login:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *email;
@property (weak, nonatomic) IBOutlet UITextField *password;
@end
