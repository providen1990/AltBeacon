//
//  UserViewController.h
//  iBeaconCustomerInfo
//
//  Created by Ryan Huynh on 6/8/16.
//  Copyright © 2016 Info Way. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>
#import <Firebase/Firebase.h>
#import "AltBeacon.h"
@import CoreBluetooth;

@interface UserViewController : UIViewController
- (IBAction)stopScanning:(id)sender;
- (IBAction)signOut:(id)sender;
- (IBAction)startScan:(id)sender;

@property (weak, nonatomic) IBOutlet UILabel *showInfo;
@property (strong, nonatomic) CLLocationManager *locationManager;
@end
