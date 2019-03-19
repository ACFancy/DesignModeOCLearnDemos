//
//  VisitorSupport.h
//  MVC_NO_IOS
//
//  Created by User on 2019/3/19.
//  Copyright © 2019 User. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

//DOM4J提供了VisitorSupport抽象接口，可以接受元素、节点、属性等访问者
@class Element;
@interface VisitorSupport : NSObject

- (void)visit:(Element *)el;

@end

NS_ASSUME_NONNULL_END
