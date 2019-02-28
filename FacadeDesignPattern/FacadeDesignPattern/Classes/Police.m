//
//  Police.m
//  FacadeDesignPattern
//
//  Created by User on 2019/2/28.
//  Copyright © 2019年 User. All rights reserved.
//

#import "Police.h"

@implementation Police

- (void)checkLetter:(id<ILetterProcess>)letterProcess
{
    NSLog(@"%s Checked", __FUNCTION__);
}

@end
