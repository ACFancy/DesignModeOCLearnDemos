//
//  Phone.h
//  SingleResponsibilityPrinciple
//
//  Created by User on 8/30/18.
//  Copyright © 2018 User. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IConnectionManager.h"
#import "IDataTransfer.h"

NS_ASSUME_NONNULL_BEGIN

@interface Phone : NSObject <IDataTransfer, IConnectionManager>

- (void)dial:(NSString *)phoneNumber;

- (void)hangup;

- (id<IDataTransfer>)dataTransfer:(id<IConnectionManager>)cm;

@end

NS_ASSUME_NONNULL_END
