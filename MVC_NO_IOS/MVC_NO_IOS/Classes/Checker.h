//
//  Checker.h
//  MVC_NO_IOS
//
//  Created by User on 2019/3/19.
//  Copyright © 2019 User. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Observer.h"
#import "IXmlValidate.h"

NS_ASSUME_NONNULL_BEGIN

//与通用策略模式稍有不同，每个模式在实际应用环境中都有其个性，很少出现完全照搬一个模式的情况，灵活应用设计模式才是关键
//策略的场景类
//策略者模式 + 观察者模式 + 类似中介者模式（并没有把中介者传递到各个同事类，采用中介者模式的思想，把中介者的职责分发出去给各个同时类来处理）
@interface Checker : NSObject <Observer>

@property (nonatomic, strong) NSString *xmlPath;

- (instancetype)initWithValidate:(id<IXmlValidate>)validate;

- (BOOL)check;

@end

NS_ASSUME_NONNULL_END
