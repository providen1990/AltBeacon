//
//  UserViewController.m
//  iBeaconCustomerInfo
//
//  Created by Ryan Huynh on 6/8/16.
//  Copyright © 2016 Info Way. All rights reserved.
//

#import "UserViewController.h"
#import <Firebase/Firebase.h>

@interface UserViewController ()<AltBeaconDelegate>
@property (strong, nonatomic) AltBeacon* beaconOne;
//@property (strong, nonatomic) CBCentralManager* centralManager;
@end

@implementation UserViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.beaconOne =  [[AltBeacon alloc ]initWithIdentifier:@"My Phone"];
    [self.beaconOne addDelegate:self];
    
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



- (IBAction)stopScanning:(id)sender {
    
    [self stop:self.beaconOne];
}

- (IBAction)signOut:(id)sender {
    [[FIRAuth auth] signOut:NULL];
    NSLog(@"You have logged out");
}

- (IBAction)startScan:(id)sender {

    [self start:self.beaconOne];
    

}

- (void)start:(AltBeacon *)beacon {
    
    // start broadcasting
    [beacon startBroadcasting];
    [beacon startDetecting];
}

- (void)stop:(AltBeacon *)beacon {
    
    // start broadcasting
    [beacon stopBroadcasting];
    [beacon stopDetecting];
}
-(void)service:(AltBeacon *)service foundDevices:(NSMutableDictionary *)devices{
    NSLog(@"%@", [[self beaconOne] adData]);
    
    
}





@end
