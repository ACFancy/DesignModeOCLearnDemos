//
//  SuperMan.h
//  CreateDesignPatternCompare
//
//  Created by User on 2019/3/11.
//  Copyright © 2019年 User. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

//超人产品
//超人这个产品是由三部分组成：躯体、特殊技能、身份标记，这就类似于电子产品，首先生产出一个固件，然后再安装一个灵魂（软件驱动），最后再打上产品标签
@interface SuperMan : NSObject

@property (nonatomic, strong) NSString *body;
@property (nonatomic, strong) NSString *specialTalent;
@property (nonatomic, strong) NSString *specialSymbol;

@end

NS_ASSUME_NONNULL_END
