//
//  LoginViewController.m
//  Teamspace
//
//  Created by Pratyus Patnaik on 6/18/15.
//  Copyright (c) 2015 Teamspace. All rights reserved.
//

#import "LoginViewController.h"
#import "OTPViewController.h"
#import "Constants.h"
#import "AFNetworking.h"

@interface LoginViewController ()
@property (weak, nonatomic) IBOutlet UITextField *phoneNumber;

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
    if (![sender isKindOfClass:[UIButton class]])
        return;

    NSLog(@"submit clicked %@", _phoneNumber.text);
    NSLog(@"Send to %@", teamSpaceURLRequestOTP);
    // AFNetworking
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    NSDictionary *parameters = @{@"phoneNumber": _phoneNumber.text};
    [manager POST:teamSpaceURLRequestOTP parameters:parameters success:^(AFHTTPRequestOperation *operation, id responseObject) {
        NSLog(@"JSON: %@", responseObject);
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"Error: %@", error);
    }];
    [self.navigationController pushViewController:[OTPViewController new] animated:YES];
}

@end
