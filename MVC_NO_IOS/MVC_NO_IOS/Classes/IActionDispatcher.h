//
//  IActionDispatcher.h
//  MVC_NO_IOS
//
//  Created by User on 2019/3/19.
//  Copyright © 2019 User. All rights reserved.
//

#ifndef IActionDispatcher_h
#define IActionDispatcher_h

//实现的模型行为分发是一个门面模式
@protocol IActionDispatcher <NSObject>

- (NSString *)actionInvoke:(NSString *)actionName;

@end

#endif /* IActionDispatcher_h */
