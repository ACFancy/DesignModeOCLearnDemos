//
//  Client.m
//  EmployeDesignPattern
//
//  Created by User on 2019/3/27.
//  Copyright © 2019 User. All rights reserved.
//

/*
 雇工模式也叫做仆人模式（Servant Design Pattern) (命令模式的一种扩展，有点像简化吧的代理模式)
    1.雇工模式是行为模式的一种，它为一组类提供通用的功能，而不需要类实现这些功能，它是命令模式的一种扩展
    2.IServiced是用于定义“一组类”所具有的功能
    3.针对不同的服务对象具备不同的服务内容，也就是具体的功能实现IServiced接口即可
    4.在整个雇工模式中，所有具有IServiced功能的类可以实现该接口，然后由雇工类Servant进行集合，完成一组类不用实现通用功能而具有相应职能的目的。
 
 最佳实践
    1.在日常的开发过程中，我们可能已经接触过雇工模式，只是我们没有把它抽取出来，也没有汇编成册
    2.或许大家已经看出这与命令模式非常相似，读者可以回顾第15章，会发现雇工模式是命令模式的一种简化，但它更符合我们实际的需要，更容易引入开发场景中
    3.没有Receiver角色，Service直接实现功能，Servant作为代理或者Invoker（这里可以理解为雇工）间接调用各个服务
 */

#import "Client.h"

#import "Cleaner.h"
#import "Cloth.h"
#import "Kitchen.h"
#import "Garden.h"

#import "Servant.h"
#import "Service1.h"
#import "Service2.h"

@implementation Client

+ (void)execute
{
    /*
     雇工模式
     场景写完了，运行一下，就可以看到厨师打扫了厨房，园丁清洁了花园，裁缝清洁了衣服。代码很简单，但是诸位有没有发觉这和我们通常的分析是不同的。通常的做法是：既然厨师、园丁、裁缝都具有清洁的功能，那就定义一个接口描述三者的清洁功能，然后再定义三个类，分别代表厨师、园丁、裁缝实现这个接口。这是一种常用的解决办法，可以解决该问题，但今天我们从另外一个侧面进行分析，引出一个新的模式:雇工模式。
     */
//    Cleaner *gardener = [Cleaner new];
//    [gardener clean:[Garden new]];
//
//    Cleaner *cooker = [Cleaner new];
//    [cooker clean:[Kitchen new]];
//
//    Cleaner *tailer = [Cleaner new];
//    [tailer clean:[Cloth new]];
    
    /*
     雇工模式通用
     */
    Servant *s1 = [Servant new];
    [s1 service:[Service1 new]];
    Servant *s2 = [Servant new];
    [s2 service:[Service2 new]];
}

@end
