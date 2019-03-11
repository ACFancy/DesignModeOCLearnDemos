//
//  AdultSuperManBuilder.m
//  CreateDesignPatternCompare
//
//  Created by User on 2019/3/11.
//  Copyright © 2019年 User. All rights reserved.
//

#import "AdultSuperManBuilder.h"


@implementation AdultSuperManBuilder

#pragma mark - Override
/*
 Q:怎么回事？在第11章中讲解建造者模式的时候在产品中使用了模板方法模式，在这里怎么把模板方法模式迁移到建造者了？怎么会这样？你是不是在发出这样的疑问？别疑问了！
 A:设计模式只是提供了一个解决问题的意图：复杂对象的构建与它的表示分离，而没有具体定出一个设计模式必须是这样的实现，必须是这样的代码，灵活运用模式才是其根本，别学死板了
 */
- (SuperMan *)superMan
{
    [self updateBody:@"xxx"];
    [self updateSpecialSymbol:@"kkk"];
    [self updateSpecialTalent:@"mmm"];
    return [super superMan];
}

@end
