//
//  OTPViewController.m
//  Teamspace
//
//  Created by Pratyus Patnaik on 6/18/15.
//  Copyright (c) 2015 Teamspace. All rights reserved.
//

#import "OTPViewController.h"
#import "AppDelegate.h"

@interface OTPViewController ()

@end

@implementation OTPViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"OTP";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction) submitClicked:(id)sender
{
    NSLog(@"submit clicked");
    
    // verify OTP
    if (YES)
    {
        AppDelegate *delegate = [[UIApplication sharedApplication] delegate];
        delegate.window.rootViewController = delegate.appViewController;
    }
}

@end
