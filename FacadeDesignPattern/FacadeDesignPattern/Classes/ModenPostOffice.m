//
//  ModenPostOffice.m
//  FacadeDesignPattern
//
//  Created by User on 2019/2/28.
//  Copyright © 2019年 User. All rights reserved.
//

#import "ModenPostOffice.h"
#import "LetterProcessImpl.h"
#import "Police.h"

@interface ModenPostOffice ()

@property (nonatomic, strong) id<ILetterProcess> letterProcess;
@property (nonatomic, strong) Police *letterPolice;

@end

@implementation ModenPostOffice

- (instancetype)init
{
    if (self = [super init]) {
        _letterProcess = [LetterProcessImpl new];
        _letterPolice = [Police new];
    }
    return self;
}

- (void)sendLetter:(NSString *)context address:(NSString *)address
{
    /*
     只是增加了一个letterPolice变量的声明以及一个方法的调用，那这个写信的过程就变成这样：先写信、写信封，然后警察开始检查，之后才把信放到信封，最后发送出去，那这个变更对客户来说是透明的，他根本就看不到有人在检查他的邮件，他也不用了解，反正现代化的邮件系统都帮他做了，这也是他乐意的地方。
     */
    [_letterProcess writeContext:context];
    [_letterProcess fillEnvelop:address];
    [_letterPolice checkLetter:_letterProcess];
    [_letterProcess letterInotoEnvelope];
    [_letterProcess sendLetter];
}

@end
