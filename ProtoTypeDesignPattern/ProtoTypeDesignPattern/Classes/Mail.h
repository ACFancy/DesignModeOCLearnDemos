//
//  Mail.h
//  ProtoTypeDesignPattern
//
//  Created by User on 2019/2/25.
//  Copyright © 2019年 User. All rights reserved.
//

#import "ProtoTypeClass.h"

NS_ASSUME_NONNULL_BEGIN

@class AdvTemplate;
//Mail类就是一个业务对象
@interface Mail : ProtoTypeClass

@property (nonatomic, strong) NSString *receiver;
@property (nonatomic, strong) NSString *application;
@property (nonatomic, strong) NSString *tail;
@property (nonatomic, strong) NSString *subject;
@property (nonatomic, strong) NSString *context;

- (instancetype)initWithAdvTemplate:(AdvTemplate *)advTemplate;

@end

NS_ASSUME_NONNULL_END
