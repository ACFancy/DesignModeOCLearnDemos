//
//  Group.h
//  CommandDesignPattern
//
//  Created by User on 2019/2/26.
//  Copyright © 2019年 User. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

//抽象类中的每个方法，其中的每个都是一个命令语气——“找到它，增加，删除，给我计划！”这些都是命令，给出命令然后由相关的人员去执行
@interface Group : NSObject

- (void)find;

- (void)add;

- (void)deleteSome;

- (void)change;

- (void)plan;

- (void)rollBack;

@end

NS_ASSUME_NONNULL_END
