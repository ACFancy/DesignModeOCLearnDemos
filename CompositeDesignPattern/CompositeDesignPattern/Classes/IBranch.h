//
//  IBranch.h
//  CompositeDesignPattern
//
//  Created by User on 2019/2/28.
//  Copyright © 2019年 User. All rights reserved.
//

#ifndef IBranch_h
#define IBranch_h
#import "ICorp.h"

@protocol ILeaf;
//树枝节点接口
//？Root类和Branch类有什么差别？根节点本身就是树枝节点的一种，为什么要定义成两个接口两个类?如果我要加一个任职期限，你是不是每个类都需要修改？如果我要后序遍历（从员工找到他的上级领导）能做到吗？——彻底晕菜了！
//问题很多，我们一个一个解决，先说抽象的问题。我们确实可以把IBranch和IRoot合并成一个接口
//那ILeaf和IBranch是不是也有共性呢？有，getInfo方法！我们是不是要把这个共性也封装起来呢？是的，是的，提炼事物的共同点，然后封装之
@protocol IBranch <ICorp>

//- (NSString *)fetchInfo;

//- (void)addBranch:(id<IBranch>)branch;
//
//- (void)addLeaf:(id<ILeaf>)leaf;

- (void)add:(id<ICorp>)crop;

- (NSMutableArray *)fetchSubordinateInfo;

@end

#endif /* IBranch_h */
