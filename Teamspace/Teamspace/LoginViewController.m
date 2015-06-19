//
//  LoginViewController.m
//  Teamspace
//
//  Created by Pratyus Patnaik on 6/18/15.
//  Copyright (c) 2015 Teamspace. All rights reserved.
//

#import "LoginViewController.h"
#import "OTPViewController.h"

@interface LoginViewController ()

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction) submitClicked:(id)sender
{
    NSLog(@"submit clicked");
    // AFNetworking
    
    [self.navigationController pushViewController:[OTPViewController new] animated:YES];
}

@end
