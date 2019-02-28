//
//  ModenPostOffice.h
//  FacadeDesignPattern
//
//  Created by User on 2019/2/28.
//  Copyright © 2019年 User. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

//客户只要把信的内容以及收信地址给他们，他们就会把信写好，封好，并发送出去。
@interface ModenPostOffice : NSObject

- (void)sendLetter:(NSString *)context address:(NSString *)address;

@end

NS_ASSUME_NONNULL_END
