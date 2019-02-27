//
//  IWomen.h
//  ChainOfResponsibilityDesignPattern
//
//  Created by User on 2019/2/26.
//  Copyright © 2019年 User. All rights reserved.
//

#ifndef IWomen_h
#define IWomen_h

@protocol IWomen <NSObject>

/*
 * 通过一个int类型的参数来描述妇女的个人状况
 * 1--未出嫁
 * 2--出嫁
 * 3--夫死
 */
//一个是取得当前的个人状况getType，通过返回值决定是结婚了还是没结婚、丈夫是否在世等
- (NSInteger)fetchType;

//要请示的内容，要出去逛街还是吃饭
- (NSString *)fetchRequest;

@end


#endif /* IWomen_h */
