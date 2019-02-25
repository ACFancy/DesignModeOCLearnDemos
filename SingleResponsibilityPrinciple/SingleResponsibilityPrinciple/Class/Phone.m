//
//  Phone.m
//  SingleResponsibilityPrinciple
//
//  Created by User on 8/30/18.
//  Copyright © 2018 User. All rights reserved.
//

#import "Phone.h"

@implementation Phone

- (void)dial:(NSString *)phoneNumber {
    NSLog(@"Call %@", phoneNumber);
}

- (void)hangup {
    NSLog(@"%s\n", __FUNCTION__);
}

- (id<IDataTransfer>)dataTransfer:(id<IConnectionManager>)cm {
    //Do Something
    return self;
}

@end
