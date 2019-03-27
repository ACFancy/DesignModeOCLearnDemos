//
//  Client.m
//  ObjectPoolDesignPattern
//
//  Created by User on 2019/3/27.
//  Copyright © 2019 User. All rights reserved.
//
/*
 对象池模式，或者称为对象池服务
    通过循环使用对象，减少资源在初始化和释放时的昂贵损耗
 注意　这里的“昂贵”可能是时间效益（如性能），也可能是空间效益（如并行处理），在大多的情况下，“昂贵”指性能。
 简单地说，在需要时，从池中提取；不用时，放回池中，等待下一个请求。典型例子是连接池和线程池，这是我们开发中经常接触到的
 
 这是一个简单的对象池实现，在实际应用中还需要考虑池的最小值、最大值、池化对象状态（若有的话，需要重点考虑）、异常处理（如满池情况）等方面，特别是池化对象状态，若是有状态的业务对象则需要重点关注
 
最佳实践
  把对象池化的本意是期望一次性初始化所有对象，减少对象在初始化上的昂贵性能开销，从而提高系统整体性能。然而池化处理本身也要付出代价，因此，并非任何情况下都适合采用对象池化。
  1.通常情况下，在重复生成对象的操作成为影响性能的关键因素时，才适合进行对象池化
  2.但是若池化所能带来的性能提高并不显著或重要的话，建议放弃对象池化技术，以保持代码的简明，转而使用更好的硬件来提高性能为佳
  3.对象池技术在Java领域已经非常成熟，只要做过企业级开发的人员，基本都用过C3P0、DBCP、Proxool等连接池，也配置过minPoolSize、maxPoolSize等参数，这是对象池模式的典型应用
  4.(JAVA)在实际开发中若需要对象池，建议使用common-pool工具包来实现，简单、快捷、高效
  5.OC中就是复用缓存池（TableView,CollectionView的缓存池技术）
 */

#import "Client.h"

#import "ConcreteObjectPool.h"
#import "ObjectStatus.h"

@implementation Client

+ (void)execute
{
    ObjectPool<NSString *> *pool = [ConcreteObjectPool new];
    NSString *key = [pool checkOut];
    [pool checkIn:key];
}

@end
