//
//  Interface.h
//  InterfaceIsolationPrinciple
//
//  Created by User on 8/31/18.
//  Copyright © 2018 User. All rights reserved.
//

#ifndef Interface_h
#define Interface_h

@protocol IPettyGrirl <NSObject>

- (void)goodLooking;

- (void)niceFigure;

- (void)greatTemperament;

@end

@protocol IGoodBodyGirl <NSObject>

- (void)goodLooking;

- (void)niceFigure;

@end

@protocol IGreateTemperamentGirl <NSObject>

- (void)greatTemperament;

@end

@protocol IBookSearcher <NSObject>

- (void)searchByAuthor:(NSString *)author;

- (void)searchByTitle:(NSString *)title;

- (void)searchByPublisher:(NSString *)publisher;

- (void)searchByCategory:(NSString *)category;

- (void)complexSearch:(NSDictionary *)dict;

@end

//接口尽量小，高内聚，定制服务，接口设计是有限度的
@protocol ISimpleBookSearch <NSObject>

- (void)searchByAuthor:(NSString *)author;

- (void)searchByTitle:(NSString *)title;

- (void)searchByPublisher:(NSString *)publisher;

- (void)searchByCategory:(NSString *)category;

@end

@protocol IComplexBookSearch <NSObject>

- (void)complexSearch:(NSDictionary *)dict;

@end

#endif /* Interface_h */
