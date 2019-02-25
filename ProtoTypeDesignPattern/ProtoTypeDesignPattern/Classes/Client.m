//
//  Client.m
//  ProtoTypeDesignPattern
//
//  Created by User on 2019/2/25.
//  Copyright © 2019年 User. All rights reserved.
//

#import "Client.h"
#import "Mail.h"
#import "AdvTemplate.h"
/*
  注意，看Client类中的粗体字mail.clone()这个方法，把对象复制一份，产生一个新的对象，和原有对象一样，然后再修改细节的数据，如设置称谓、设置收件人地址等。这种不通过new关键字来产生一个对象，而是通过对象复制来实现的模式就叫做原型模式。(JAVA)
 原型模式
    简单程度仅次于单例模式和迭代器模式
    用原型实例指定创建对象的种类，并且通过拷贝这些原型创建新的对象。
    原型模式的核心是一个clone方法，通过该方法进行对象的拷贝
 JAVA:
     Java提供了一个Cloneable接口来标示这个对象是可拷贝的，为什么说是“标示”呢？翻开JDK的帮助看看Cloneable是一个方法都没有的，这个接口只是一个标记作用，在JVM中具有这个标记的对象才有可能被拷贝。那怎么才能从“有可能被拷贝”转换为“可以被拷贝”呢？方法是覆盖clone()方法，是的，你没有看错是重写clone()方法
     注意，在clone()方法上增加了一个注解@Override，没有继承一个类为什么可以覆写呢？想想看，在Java中所有类的老祖宗是谁？对嘛，Object类，每个类默认都是继承了这个类，所以用覆写是非常正确的——覆写了Object类中的clone方法！
 
     在Java中原型模式是如此简单，我们来看通用源代码，如代码清单13-7所示
 OC:
   遵守NSCopying或者NSMutableCopying协议，实现协议方法，即可
 
 原型模式的优点
 ● 性能优良
    原型模式是在内存二进制流的拷贝，要比直接new一个对象性能好很多，特别是要在一个循环体内产生大量的对象时，原型模式可以更好地体现其优点。(JAVA)
 ● 逃避构造函数的约束
    这既是它的优点也是缺点，直接在内存中拷贝，构造函数是不会执行的（参见13.4节）。优点就是减少了约束，缺点也是减少了约束，需要大家在实际应用时考虑。
 原型模式的使用场景
 ● 资源优化场景
    类初始化需要消化非常多的资源，这个资源包括数据、硬件资源等。
 ● 性能和安全要求的场景
    通过new产生一个对象需要非常繁琐的数据准备或访问权限，则可以使用原型模式。
 ● 一个对象多个修改者的场景
    一个对象需要提供给其他对象访问，而且各个调用者可能都需要修改其值时，可以考虑使用原型模式拷贝多个对象供调用者使用。
    在实际项目中，原型模式很少单独出现，一般是和工厂方法模式一起出现，通过clone的方法创建一个对象，然后由工厂方法提供给调用者。原型模式已经与Java融为一体，大家可以随手拿来使用。
 原型模式的注意事项
    原型模式虽然很简单，但是在Java中使用原型模式也就是clone方法还是有一些注意事项的，我们通过几个例子逐个解说。
     构造函数不会被执行(OC没有这个)
    对象拷贝时构造函数确实没有被执行，这点从原理来讲也是可以讲得通的，Object类的clone方法的原理是从内存中（具体地说就是堆内存）以二进制流的方式进行拷贝，重新分配一个内存块，那构造函数没有被执行也是非常正常的了。
 浅拷贝和深拷贝
    其对象内部的数组、引用对象等都不拷贝，还是指向原生对象的内部元素地址，这种拷贝就叫做浅拷贝
    确实是非常浅，两个对象共享了一个私有变量，你改我改大家都能改，是一种非常不安全的方式，在实际项目中使用还是比较少的（当然，这也是一种“危机”环境的一种救命方式）
 注意　使用原型模式时，引用的成员变量必须满足两个条件才不会被拷贝：一是类的成员变量，而不是方法内变量；二是必须是一个可变的引用对象，而不是一个原始类型或不可变对象。(JAVA)
 注意　要使用clone方法，类的成员变量上不要增加final关键字。(JAVA)
 最佳实践
    原型模式先产生出一个包含大量共有信息的类,然后可以拷贝出副本，修正细节信息，建立了一个完整的个性对象
    我们今天讲的原型模式也就是由一个正本可以创建多个副本的概念。可以这样理解：一个对象的产生可以不由零起步，直接从一个已经具备一定雏形的对象克隆，然后再修改为生产需要的对象。
    也就是说，产生一个人，可以不从1岁长到2岁，再到3岁……也可以直接找一个人，从其身上获得DNA，然后克隆一个，直接修改一下就是30岁了！我们讲的原型模式也就是这样的功能。
 */

@interface Client ()

@end

@implementation Client

static int MAX_COUNT = 6;

#pragma mark - Public Methods
+ (void)execute
{
    int i = 0;
    Mail *mail = [[Mail alloc] initWithAdvTemplate:[AdvTemplate new]];
    mail.tail = @"XX银行版权所有";
    NSMutableArray *array = [NSMutableArray array];
    while (i < MAX_COUNT) {
//        mail.application = [NSString stringWithFormat:@"%@ 先生（女士）", [self fetchRandString:5]];
//        mail.receiver = [NSString stringWithFormat:@"%@@%@.com", [self fetchRandString:5], [self fetchRandString:8]];
        Mail *cloneMail = [mail copy];
        NSLog(@"dog-%p,%p", cloneMail, mail);
        cloneMail.application = [NSString stringWithFormat:@"%@ 先生（女士）", [self fetchRandString:5]];
        cloneMail.receiver = [NSString stringWithFormat:@"%@@%@.com", [self fetchRandString:5], [self fetchRandString:8]];
        [self sendMail:cloneMail];
        [array addObject:cloneMail];
        i++;
    }
//    array;
}

+ (void)sendMail:(Mail *)mail
{
    NSLog(@"标题：%@, \t 收件人：%@ \t..发送成功！", mail.subject, mail.receiver);
}

+ (NSString *)fetchRandString:(NSInteger)maxLength
{
    NSString *source = @"abcdefghijklmnopqrskuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ";
    NSMutableString *string = [NSMutableString string];\
    NSRange subRange;
    for (NSInteger i = 0; i < maxLength; i++) {
        subRange = NSMakeRange((NSUInteger)arc4random_uniform((uint32_t)source.length), 1);
        [string appendString:[source substringWithRange:subRange]];
    }
    return string.copy;
}

@end
