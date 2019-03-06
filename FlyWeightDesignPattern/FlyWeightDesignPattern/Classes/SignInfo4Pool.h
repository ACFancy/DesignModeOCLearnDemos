//
//  SignInfo4Pool.h
//  FlyWeightDesignPattern
//
//  Created by User on 2019/3/6.
//  Copyright © 2019年 User. All rights reserved.
//

#import "SignInfo.h"

NS_ASSUME_NONNULL_BEGIN

@interface SignInfo4Pool : SignInfo

////定义一个对象池提取的KEY值
/*
 很简单，就是增加了一个key值，为什么要增加key值？为什么要使用子类，而不在SignInfo类上做修改？好，我来给你解释为什么要这样做，我们刚刚已经分析了所有的SignInfo对象都有一些共同的属性：考试科目和考试地点，我们把这些共性提取出来作为所有对象的外部状态，在这个对象池中一个具体的外部状态只有一个对象。
 
 按照这个设计，我们定义key值的标准为：考试科目+考试地点的复合字符串作为唯一的池对象标准，也就是说在对象池中，一个key值唯一对应一个对象。
 也就是说在对象池中，一个key值唯一对应一个对象。
 注意
 1.在对象池中，对象一旦产生，必然有一个唯一的、可访问的状态标志该对象，而且池中的对象声明周期是由池容器决定，而不是由使用者决定的。
 
 
 你可能马上就要提出了，为什么不建立一个新的类，包含subject和location两个属性作为外部状态呢？嗯，这是一个办法，但不是最好的办法，有两个原因：
 ● 修改的工作量太大，增加的这个类由谁来创建呢？同时，SignInfo类是否也要修改呢？你不可能让两段相同的POJO程序同时出现在同一模块中吧！
 ● 性能问题，我们会在扩展模块中讲解。
 
 
 */
@property (nonatomic, strong) NSString *key;

- (instancetype)initWithKey:(NSString *)key;

@end

NS_ASSUME_NONNULL_END
