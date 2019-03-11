//
//  Builder.h
//  CreateDesignPatternCompare
//
//  Created by User on 2019/3/11.
//  Copyright © 2019年 User. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@class SuperMan;
//抽象建造者
//一个典型的模板方法模式，超人的各个部件（躯体、灵魂、标志）都准备好了，具体怎么组装则是由实现类来决定
@interface Builder : NSObject

@property (nonatomic, strong) SuperMan *superMan;

- (void)updateBody:(NSString *)body;

- (void)updateSpecialTalent:(NSString *)specialTalent;

- (void)updateSpecialSymbol:(NSString *)specialSymbol;

@end

NS_ASSUME_NONNULL_END
