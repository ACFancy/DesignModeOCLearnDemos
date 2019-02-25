//
//  IDataTransfer.h
//  SingleResponsibilityPrinciple
//
//  Created by User on 8/30/18.
//  Copyright © 2018 User. All rights reserved.
//
#import "IConnectionManager.h"
#ifndef IDataTransfer_h
#define IDataTransfer_h

@protocol IDataTransfer <NSObject>

- (id<IDataTransfer>)dataTransfer:(id<IConnectionManager>)cm;

@end

#endif /* IDataTransfer_h */
