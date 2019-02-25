//
//  IConnectionManager.h
//  SingleResponsibilityPrinciple
//
//  Created by User on 8/30/18.
//  Copyright © 2018 User. All rights reserved.
//

#ifndef IConnectionManager_h
#define IConnectionManager_h

@protocol IConnectionManager <NSObject>

- (void)dial:(NSString *)phoneNumber;

- (void)hangup;

@end

#endif /* IConnectionManager_h */
