//
//  OwnerViewController.m
//  iBeaconCustomerInfo
//
//  Created by Ryan Huynh on 6/12/16.
//  Copyright © 2016 Info Way. All rights reserved.
//

#import "OwnerViewController.h"
#import <Firebase/Firebase.h>

@interface OwnerViewController ()

@end

@implementation OwnerViewController

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

- (IBAction)Config:(id)sender {

    //set new value
    NSString *url = [NSString stringWithFormat:@"%@/%@", [[FIRDatabase database] reference], self.room1UUID.text];
    FIRDatabaseReference *ref = [[FIRDatabase database] referenceFromURL:url];
    [ref setValue:@"Study Room"];
    
    NSString *url1 = [NSString stringWithFormat:@"%@/%@", [[FIRDatabase database] reference], self.room2UUID.text];
    FIRDatabaseReference *ref1 = [[FIRDatabase database] referenceFromURL:url1];
    [ref1 setValue:@"Interview Room"];
    
    NSString *url2 = [NSString stringWithFormat:@"%@/%@", [[FIRDatabase database] reference], self.room3UUID.text];
    FIRDatabaseReference *ref2 = [[FIRDatabase database] referenceFromURL:url2];
    [ref2 setValue:@"Training Room"];
    
    // get all values of the tree get this part
    
    
    
}

- (IBAction)signOut:(id)sender {
    [[FIRAuth auth] signOut:NULL];
    NSLog(@"You have logged out");
}
@end
