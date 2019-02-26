//
//  DeletePageCommand.m
//  CommandDesignPattern
//
//  Created by User on 2019/2/26.
//  Copyright © 2019年 User. All rights reserved.
//

#import "DeletePageCommand.h"
#import "RequirementGroup.h"
#import "PageGroup.h"
#import "CodeGroup.h"

@implementation DeletePageCommand

- (void)execute
{
    [self.pg deleteSome];
    
    [self.rg deleteSome];
    
    [self.rg plan];
}

@end
