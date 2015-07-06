//
//  Constants.m
//  Teamspace
//
//  Created by Pratyus Patnaik on 7/4/15.
//  Copyright (c) 2015 Teamspace. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Constants.h"

#ifdef DEBUG
#define TEAMSPACE_API_ENDPOINT @"http://192.168.1.88:1337"
#else
#define TEAMSPACE_API_ENDPOINT @"http://teamspace.herokuapp.com"
#endif

NSString* const teamSpaceURLBase =        TEAMSPACE_API_ENDPOINT;
NSString* const teamSpaceURLUser =       (TEAMSPACE_API_ENDPOINT @"/user");
NSString* const teamSpaceURLVerifyOTP =  (TEAMSPACE_API_ENDPOINT @"/verifyOTP");
NSString* const teamSpaceURLRequestOTP = (TEAMSPACE_API_ENDPOINT @"/generateOTP");







