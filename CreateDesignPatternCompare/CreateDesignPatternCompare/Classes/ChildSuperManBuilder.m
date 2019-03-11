//
//  ChildSuperManBuilder.m
//  CreateDesignPatternCompare
//
//  Created by User on 2019/3/11.
//  Copyright © 2019年 User. All rights reserved.
//

#import "ChildSuperManBuilder.h"

@implementation ChildSuperManBuilder

#pragma mark - Override
/*
 家注意看我们这两个具体的建造者，它们都关注了产品的各个部分，在某些应用场景下甚至会关心产品的构建顺序，即使是相同的部件，装配顺序不同，产生的结果也不同，
 这也正是建造者模式的意图：通过不同的部件、不同装配产生不同的复杂对象。
 */
- (SuperMan *)superMan
{
    [self updateBody:@"ssss"];
    [self updateSpecialTalent:@"ffff"];
    [self updateSpecialSymbol:@"cccc"];
    return [super superMan];
}

@end
