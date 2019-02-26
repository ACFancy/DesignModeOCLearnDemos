//
//  ConcreteCommand2.h
//  CommandDesignPattern
//
//  Created by User on 2019/2/26.
//  Copyright © 2019年 User. All rights reserved.
//

#import "ACommand.h"

NS_ASSUME_NONNULL_BEGIN

@class AReceiver;
@interface ConcreteCommand2 : ACommand

- (instancetype)initWithReceiver:(AReceiver *)receiver;

@end

NS_ASSUME_NONNULL_END
