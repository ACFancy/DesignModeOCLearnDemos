//
//  CancelDeletePageCommand.m
//  CommandDesignPattern
//
//  Created by User on 2019/2/26.
//  Copyright © 2019年 User. All rights reserved.
//

#import "CancelDeletePageCommand.h"
#import "PageGroup.h"

@implementation CancelDeletePageCommand

- (void)execute
{
    //撤销删除一个页面的命令
    [self.pg rollBack];
}

@end
