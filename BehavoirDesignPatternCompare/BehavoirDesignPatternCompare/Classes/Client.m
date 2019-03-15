//
//  Client.m
//  BehavoirDesignPatternCompare
//
//  Created by User on 2019/3/12.
//  Copyright © 2019年 User. All rights reserved.
//
/*
 行为类模式包括责任链模式、命令模式、解释器模式、迭代器模式、中介者模式、备忘录模式、观察者模式、状态模式、策略模式、模板方法模式、访问者模式
 
 命令模式VS策略模式
    1.命令模式和策略模式的类图确实很相似，只是命令模式多了一个接收者（Receiver）角色
    2.它们虽然同为行为类模式，但是两者的区别还是很明显的
    3.策略模式的意图是封装算法，它认为“算法”已经是一个完整的、不可拆分的原子业务（注意这里是原子业务，而不是原子对象），即其意图是让这些算法独立，并且可以相互替换，让行为的变化独立于拥有行为的客户
    4.命令模式则是对动作的解耦，把一个动作的执行分为执行对象（接收者角色）、执行行为（命令角色），让两者相互独立而不相互影响
    5.命令模式的主旨是封装命令，使请求者与实现者解耦
 小结
    策略模式和命令模式相似，特别是命令模式退化时，比如无接收者（接收者非常简单或者接收者是一个Java的基础操作，无需专门编写一个接收者），在这种情况下，命令模式和策略模式的类图完全一样，代码实现也比较类似，但是两者还是有区别的。
 ● 关注点不同
    1.策略模式关注的是算法替换的问题，一个新的算法投产，旧算法退休，或者提供多种算法由调用者自己选择使用，算法的自由更替是它实现的要点。换句话说，策略模式关注的是算法的完整性、封装性，只有具备了这两个条件才能保证其可以自由切换。
    2.命令模式则关注的是解耦问题，如何让请求者和执行者解耦是它需要首先解决的，解耦的要求就是把请求的内容封装为一个一个的命令，由接收者执行。由于封装成了命令，就同时可以对命令进行多种处理，例如撤销、记录等。
 ● 角色功能不同
    1.在我们的例子中，策略模式中的抽象算法和具体算法与命令模式的接收者非常相似，但是它们的职责不同。
    2.策略模式中的具体算法是负责一个完整算法逻辑，它是不可再拆分的原子业务单元，一旦变更就是对算法整体的变更。
    3.而命令模式则不同，它关注命令的实现，也就是功能的实现。例如我们在分支中也提到接收者的变更问题，它只影响到命令族的变更，对请求者没有任何影响，从这方面来说，接收者对命令负责，而与请求者无关
    4.命令模式中的接收者只要符合六大设计原则，完全不用关心它是否完成了一个具体逻辑，它的影响范围也仅仅是抽象命令和具体命令，对它的修改不会扩散到模式外的模块。
    5.如果在命令模式中需要指定接收者，则需要考虑接收者的变化和封装，例如一个老顾客每次吃饭都点同一个厨师的饭菜，那就必须考虑接收者的抽象化问题。
 ● 使用场景不同
    1.策略模式适用于算法要求变换的场景
    2.而命令模式适用于解耦两个有紧耦合关系的对象场合或者多命令多撤销的场景
 
 策略模式VS状态模式
    1.在行为类设计模式中，状态模式和策略模式是亲兄弟，两者非常相似
    2.两个类图非常相似，都是通过Context类封装一个具体的行为，都提供了一个封装的方法，是高扩展性的设计模式
    3.但根据两者的定义，我们发现两者的区别还是很明显的：策略模式封装的是不同的算法，算法之间没有交互，以达到算法可以自由切换的目的
    4.而状态模式封装的是不同的状态，以达到状态切换行为随之发生改变的目的。
    5.这两种模式虽然都有变换的行为，但是两者的目标却是不同的。
 小结
    从例子中我们可以看出策略模式和状态模式确实非常相似，称之为亲兄弟亦不为过，但是这两者还是存在着非常大的差别，而且也是很容易区分的。
 ● 环境角色的职责不同
    1.两者都有一个叫做Context环境角色的类，但是两者的区别很大，策略模式的环境角色只是一个委托作用，负责算法的替换
    2.状态模式的环境角色不仅仅是委托行为，它还具有登记状态变化的功能，与具体的状态类协作，共同完成状态切换行为随之切换的任务。
● 解决问题的重点不同
    1.策略模式旨在解决内部算法如何改变的问题，也就是将内部算法的改变对外界的影响降低到最小，它保证的是算法可以自由地切换
    2.状态模式旨在解决内在状态的改变而引起行为改变的问题，它的出发点是事物的状态，封装状态而暴露行为，一个对象的状态改变，从外界来看就好像是行为改变
 ● 解决问题的方法不同
    1.策略模式只是确保算法可以自由切换，但是什么时候用什么算法它决定不了
    2.状态模式对外暴露的是行为，状态的变化一般是由环境角色和具体状态共同完成的，也就是说状态模式封装了状态的变化而暴露了不同的行为或行为结果
 ● 应用场景不同
    1.两者都能实现前面例子中的场景，但并不表示两者的应用场景相同，这只是为了更好地展示出两者的不同而设计的一个场景
    2.策略模式只是一个算法的封装，可以是一个有意义的对象，也可以是一个无意义的逻辑片段，比如MD5加密算法，它是一个有意义的对象吗？不是，它只是我们数学上的一个公式的相关实现，它是一个算法，同时DES算法、RSA算法等都是具体的算法，也就是说它们都是一个抽象算法的具体实现类，从这点来看策略模式是一系列平行的、可相互替换的算法封装后的结果，这就限定了它的应用场景：算法必须是平行的，否则策略模式就封装了一堆垃圾，产生了“坏味道”
    3.状态模式则要求有一系列状态发生变化的场景，它要求的是有状态且有行为的场景，也就是一个对象必须具有二维（状态和行为）描述才能采用状态模式，如果只有状态而没有行为，则状态的变化就失去了意义。
 ● 复杂度不同
    1.通常策略模式比较简单，这里的简单指的是结构简单，扩展比较容易，而且代码也容易阅读。
    2.一个具体的算法也可以写得很复杂，只有具备很高深的数学、物理等知识的人才可以看懂，这也是允许的，我们只是说从设计模式的角度来分析，它是很容易被看懂的
    3.状态模式则通常比较复杂，因为它要从两个角色看到一个对象状态和行为的改变，也就是说它封装的是变化
    4.知道变化是无穷尽的，因此相对来说状态模式通常都比较复杂，涉及面很多，虽然也很容易扩展，但是一般不会进行大规模的扩张和修正
 
 观察者模式VS责任链模式
  1.我们在观察者模式中也提到了触发链（也叫做观察者链）的问题，一个具体的角色既可以是观察者，也可以是被观察者，这样就形成了一个观察者链。
  2.这与责任链模式非常类似，它们都实现了事务的链条化处理，比如说在上课的时候你睡着了，打鼾声音太大，盖过了老师讲课声音，老师火了，捅到了校长这里，校长也处理不了，然后告状给你父母，于是你的魔鬼日子来临了，这是责任链模式，老师、校长、父母都是链中的一个具体角色，事件（你睡觉）在链中传递，最终由一个具体的节点来处理，并将结果反馈给调用者（你挨揍了）。那什么是触发链？你还是在课堂上睡觉，还是打鼾声音太大，老师火了，但是老师掏出个扩音器来讲课，于是你睡不着了，同时其他同学的耳朵遭殃了，这就是触发链，其中老师既是观察者（相对你）也是被观察者（相对其他同学），事件从“你睡觉”到老师这里转化为“扩音器放大声音”，这也是一个链条结构，但是链结构中传递的事件改变了。
 小结
    通过对DNS解析过程的实现，我们发现触发链和责任链虽然都是链结构，但是还是有区别的
● 链中的消息对象不同
    1.从首节点开始到最终的尾节点，两个链中传递的消息对象是不同的
    2.责任链模式基本上不改变消息对象的结构，虽然每个节点都可以参与消费（一般是不参与消费），类似于“雁过拔毛”，但是它的结构不会改变，比如从首节点传递进来一个String对象或者Person对象，不会到链尾的时候成了int对象或者Human对象，这在责任链模式中是不可能的
    3.但是在触发链模式中是允许的，链中传递的对象可以自由变化，只要上下级节点对传递对象了解即可，它不要求链中的消息对象不变化，它只要求链中相邻两个节点的消息对象固定
 ● 上下节点的关系不同
    1.在责任链模式中，上下节点没有关系，都是接收同样的对象，所有传递的对象都是从链首传递过来，上一节点是什么没有关系，只要按照自己的逻辑处理就成
    2.触发链模式就不同了，它的上下级关系很亲密，下级对上级顶礼膜拜，上级对下级绝对信任，链中的任意两个相邻节点都是一个牢固的独立团体
 ● 消息的分销渠道不同
    1.在责任链模式中，一个消息从链首传递进来后，就开始沿着链条向链尾运动，方向是单一的、固定的
    2.触发链模式则不同，由于它采用的是观察者模式，所以有非常大的灵活性，一个消息传递到链首后，具体怎么传递是不固定的，可以以广播方式传递，也可以以跳跃方式传递，这取决于处理消息的逻辑
 */


#import "Client.h"

#import "Strategy/Context.h"
#import "Strategy/Zip.h"
#import "Strategy/Gzip.h"

#import "Command/ZipCompressCmd.h"
#import "Command/ZipUncompressCmd.h"
#import "Command/Invoker.h"

#import "Strategy2/SContext.h"
#import "Strategy2/ChildWork.h"
#import "Strategy2/AdultWork.h"
#import "Strategy2/OldWork.h"

#import "State/Human.h"
#import "State/ChildState.h"

#import "ReponsityChain/SHDnsServer.h"
#import "ReponsityChain/ChinaTopDnsServer.h"
#import "ReponsityChain/TopDnsServer.h"
#import "ReponsityChain/Recorder.h"

#import "Observer/ORecorder.h"
#import "Observer/OSHDnsServer.h"
#import "Observer/OChinaDnsServer.h"
#import "Observer/OTopDnsServer.h"

@implementation Client

+ (void)execute
{
    /*
     策略模式
     要使用gzip算法吗？在客户端（Client）上把注释删掉就可以了，其他的模块根本不受任何影响，策略模式关心的是算法是否可以相互替换。策略模式虽然简单，但是在项目组使用得非常多，可以说随手拈来就是一个策略模式。
     */
//    Context *ctx;
//    ctx = [[Context alloc] initWithAgorithm:[Zip new]];
//
//    //替换为Gzip
////    ctx = [[Context alloc] initWithAgorithm:[Gzip new]];
//
//    [ctx compressWithSource:@"file:\\\\temp" to:@"file:\\\\temp\\temp\\temp.zip"];
//    [ctx uncompressWithSource:@"file:\\\\temp\\temp\\temp.zip" to:@"file:\\\\temp"];
    
    /*
     命令模式
     但是还是一个典型的命令模式，通过定义具体命令完成文件的压缩、解压缩任务，注意我们这里对文件的每一个操作都是封装好的命令，对于给定的请求，命令不同，处理的结果当然也不同，这就是命令模式要强调的
     剩下的工作就是对抽象命令、具体命令稍作修改，这里不再赘述。为什么要在这里增加一个分支描述呢？这是为了与策略模式对比，在命令模式中，我们可以把接收者设计得与策略模式的算法相同，也可以不相同
     我们按照职责设计的接口就不适用于策略模式，不可能封装一个叫做压缩的算法类，然后在类中提供两种不同格式的压缩功能，这违背了策略模式的意图——封装算法，为什么呢？如果要增加一个rar压缩算法，该怎么办呢？修改抽象算法？这是绝对不允许的！那为什么命令模式就是允许的呢？因为命令模式着重于请求者和接收者解耦，你管我接收者怎么变化，只要不影响请求者就成，这才是命令模式的意图
     想新增一个命令？当然没有问题，只要重新定义一个命令就成，命令改变了，高层模块只要调用它就成。请注意，这里的程序还有点欠缺，没有与文件的后缀名绑定，不应该出现使用zip压缩命令产生一个.gzip后缀的文件名，读者在实际应用中可以考虑与文件后缀名之间建立关联。
     命令模式也实现了文件的压缩、解压缩的功能，它的实现是关注了命令的封装，是请求者与执行者彻底分开，看看我们的程序，执行者根本就不用了解命令的具体执行者，它只要封装一个命令——“给我用zip格式压缩这个文件”就可以了，具体由谁来执行，则由调用者负责，如此设计后，就可以保证请求者和执行者之间可以相互独立，各自发展而不相互影响
     由于是一个命令模式，接收者的处理可以进行排队处理，在排队处理的过程中，可以进行撤销处理，比如客人点了一个菜，厨师还没来得及做，那要撤回很简单，撤回也是命令，这是策略模式所不能实现的
     */
    
//    AbstractCmd *command = [ZipCompressCmd new];
//
////    AbstractCmd *unCommand = [ZipUncompressCmd new]
//    Invoker *invoker = [[Invoker alloc] initWithCmd:command];
//    [invoker executeWithSource:@"文件1" to:@"文件2"];
    
    
    /*
     策略模式
     通过采用策略模式我们实现了“工作”这个策略的三种不同算法，算法可以自由切换，到底用哪个算法由调用者（高层模块）决定。策略模式的使用重点是算法的自由切换——老的算法退休，新的算法上台，对模块的整体功能没有非常大的改变，非常灵活。而如果想要增加一个新的算法，比如未出生婴儿的工作，只要继承WorkAlgorithm就可以了。
     */
//    SContext *context = [SContext new];
//
//    [context setWorkMethod:[ChildWork new]];
//    [context work];
//
//    [context setWorkMethod:[AdultWork new]];
//    [context work];
//
//    [context setWorkMethod:[OldWork new]];
//    [context work];
    
    /*
     状态模式
     1.运行结果与策略模式相同，但是两者的分析角度是大相径庭的。策略模式的实现是通过分析每个人的工作方式的不同而得出三个不同的算法逻辑
     2.状态模式则是从人的生长规律来分析，每个状态对应了不同的行为，状态改变后行为也随之改变
     3.从以上示例中我们也可以看出，对于相同的业务需求，有很多种实现方法，问题的重点是业务关注的是什么，是人的生长规律还是工作逻辑？找准了业务的焦点，才能选择一个好的设计模式。
     */
//    Human *human = [Human new];
////    ChildState *state = [ChildState new];
//    [human setState:[ChildState new]];
//    [human work];
//    [human work];
//    [human work];
    
    /*
     责任链模式
     这个模拟过程看起来很完整，它完全就是责任链模式的一个具体应用，把一个请求放置到链中的首节点，然后由链中的某个节点进行解析并将结果反馈给调用者。但是，我可以负责任地告诉你：这个解析过程是有缺陷的，什么缺陷？后面会说明
     */
//    DnsServer *sh = [SHDnsServer new];
//    DnsServer *china = [ChinaTopDnsServer new];
//    DnsServer *top = [TopDnsServer new];
//
//    [sh setUpperServer:china];
//    [china setUpperServer:top];
//
//    Recorder *recorder = [sh resolve:@"www.baidu.com"];
//    NSLog(@"%@", [recorder description]);
    
    /*
     观察者模式
     触发链模式实现DNS解析过程
     1.上面说到使用责任链模式模拟DNS解析过程是有缺陷的，究竟有什么缺陷？大家是不是觉得这个解析过程很完美了，没什么问题了？那说明你对DNS协议了解得还不太深入。我们来做一个实验，在dos窗口下输入nslookup命令，然后输入多个域名，注意观察返回值有哪些数据是相同的。可以看出，解析者都相同，都是由同一个DNS服务器解析的，准确地说都是由本机配置的DNS服务器做的解析。这与我们上面的模拟过程是不相同的，看看我们模拟的过程，对请求者来说，".sh.cn"是由区域DNS解析的，".com"却是由全球顶级DNS解析的，与真实的过程不相同，这是怎么回事呢？
     2.首先由请求者发送一个请求，然后由上海DNS服务器尝试解析，若不能解析再通过路径②转发给中国顶级DNS进行解析，解析后的结果通过路径⑤返回给上海DNS服务器，然后由上海DNS服务器通过路径⑥返回给请求者。同样，若中国顶级DNS不能解析，则通过路径③转由全球顶级DNS进行解析，通过路径④把结果返回给中国顶级DNS，然后再通过路径⑤返回给上海DNS。注意看标号⑥
     3.不管一个域名最终由谁解析，最终反馈到请求者的还是第一个节点，也就是说首节点负责对请求者应答，其他节点都不与请求者交互，而只与自己的左右节点交互。实际上我们的DNS服务器确实是如此处理的
     4.上海DNS服务器解析不到这个域名，于是提交到中国顶级DNS服务器，如果中国顶级DNS服务器有该域名的记录，则找到该记录，反馈到上海DNS服务器，上海DNS服务器做两件事务处理：一是响应请求者，二是存储该记录，以备其他请求者再次查询，这类似于数据缓存
     5.整个场景我们已经清晰，想想看，我们把请求者看成是被观察者，它的行为或属性变更通知了观察者——上海DNS，上海DNS又作为被观察者出现了自己不能处理的行为（行为改变），通知了中国顶级DNS，依次类推，这是不是一个非常标准的触发链？而且还必须是同步的触发，异步触发已经在该场景中失去了意义
     6.与责任链模式很相似，仅仅多了一个Observable父类和Observer接口，但是在实现上这两种模式有非常大的差异。我们先来解释一下抽象DnsServer的作用
     ● 标示声明
        表示所有的DNS服务器都具备双重身份：既是观察者也是被观察者，这很重要，它声明所有的服务器都具有相同的身份标志，具有该标志后就可以在链中随意移动，而无需固定在链中的某个位置（这也是链的一个重要特性）。
     ● 业务抽象
        方法setUpperServer的作用是设置父DNS，也就是设置自己的观察者，update方法不仅仅是一个事件的处理者，也同时是事件的触发者。
        我们来看代码，首先是最简单的，Recorder类与责任链模式中的记录相同，这里不再赘述
     与责任链模式中的场景类很相似。读者请注意osh.update(nil,orecorder)这句代码，这是我们虚拟了观察者触发动作，完整的做法是把场景类作为一个被观察者，然后设置观察者为上海DNS服务器，再进行测试，其结果完全相同，我们这里为减少代码量采用了简化处理
     可以看出，所有的解析结果都是由上海DNS服务器返回的，这才是真正的DNS解析过程。如何知道它是由上海DNS服务器解析的还是由别的DNS服务器解析的呢？很好办，把代码拷贝过去，然后调试跟踪一下就可以了。或者仔细看看代码，理解一下代码逻辑也可以非常清楚地知道它是如何解析的。
     ● 下级节点对上级节点顶礼膜拜
        1.上海域名服务器只知道它是由父节点（中国顶级DNS服务器）解析的，而不知道父节点把该请求转发给了更上层节点（全球顶级DNS服务器），也就是说下级节点关注的是上级节点的响应，只要是上级反馈的结果就认为是上级的
        2.这个域名最终是由最高节点（全球顶级DNS服务器）解析的，它把解析结果传递给第二个节点（中国顶级DNS服务器）时的签名为“全球顶级DNS服务器”，而第二个节点把请求传递给首节点（上海DNS服务器）时的签名被修改为“中国顶级DNS服务器”。所有从上级节点反馈的响应都认为是上级节点处理的结果，而不追究到底是不是真的是上级节点处理的
     ● 上级节点对下级节点绝对信任
        1.上级节点只对下级节点负责，它不关心下级节点的请求从何而来，只要是下级发送的请求就认为是下级的
        2.当最高节点（全球顶级DNS服务器）获得解析请求时，它认为这个请求是谁的？当然是第二个节点（中国顶级DNS服务器）的，否则它也不会把结果反馈给它，但是这个请求的源头却是首节点（上海DNS服务器）的
     */
    ODnsServer *osh = [OSHDnsServer new];
    ODnsServer *ochina = [OChinaDnsServer new];
    ODnsServer *otop = [OTopDnsServer new];
    
    [osh setUpperServer:ochina];
    [ochina setUpperServer:otop];
    
    ORecorder *orecorder = [ORecorder new];
    [orecorder setDomain:@"www.baidu.com"];
    [osh update:nil arg1:orecorder];
    NSLog(@"%@", [orecorder description]);
}

@end