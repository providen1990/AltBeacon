//
//  OwnerLoginViewController.m
//  iBeaconCustomerInfo
//
//  Created by Ryan Huynh on 6/9/16.
//  Copyright © 2016 Info Way. All rights reserved.
//

#import "OwnerLoginViewController.h"

@interface OwnerLoginViewController ()

@end

@implementation OwnerLoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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

- (IBAction)login:(id)sender {
    //when login success error = null
    if ([_email.text  isEqual: @"haha@gmail.com"]) {
        [[FIRAuth auth] signInWithEmail:_email.text password:_password.text completion:^(FIRUser *user, NSError *error) {
            NSLog(@"%@", error);
        }];
    }
    else{
        NSLog(@"you are not authorized");
    }

}
@end
