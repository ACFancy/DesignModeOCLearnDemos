//
//  Corp.h
//  CompositeDesignPattern
//
//  Created by User on 2019/2/28.
//  Copyright © 2019年 User. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

//场景类只认定抽象类Corp就成
@interface Corp : NSObject

+ (instancetype)new NS_UNAVAILABLE;

- (instancetype)init NS_UNAVAILABLE;

- (instancetype)initWithName:(NSString *)name
                    position:(NSString *)position
                      salary:(NSInteger)salary;

- (NSString *)fetchInfo;

/*在每个节点都增加了一个属性：父节点对象，这样在树枝节点增加子节点或叶子节点是设置父节点，然后你看整棵树除了根节点外每个节点都有一个父节点，剩下的事情还不好处理吗？每个节点上都有父节点了，你要往上找，那就找呗！大家自己考虑一下，写个find方法，然后一步一步往上找，非常简单的方法，这里就不再赘述。
 有了这个parent属性，什么后序遍历（从下往上找）、中序遍历（从中间某个环节往上或往下遍历）都解决了，这个就不多说了。
 再提一个问题，树叶节点和树枝节点是有顺序的，你不能乱排，怎么办？比如我们上面的例子，研发一组下边有3个成员，这3个成员要进行排序（在机关里这叫做排位，同样是同事也有个先后升迁顺序），你怎么处理？问我呀，问你呢，好好想想，以后用得着的
 */
- (void)setParent:(Corp *)parent;

- (Corp *)fetchParent;

@end

NS_ASSUME_NONNULL_END
