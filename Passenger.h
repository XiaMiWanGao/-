//
//  Passenger.h
//  College Demo
//
//  Created by mashujun on 2022/7/18.
//

#import "Person.h"

NS_ASSUME_NONNULL_BEGIN

@interface Orders : NSObject

@property (nonatomic,assign) NSUInteger id;        //票的id，从1开始
@property (nonatomic,assign) NSString *name;      //姓名
@property (nonatomic,assign) NSUInteger idNumber;  //身份证

@end

@interface Passenger : Person
// @property 属性
// 是否年满 18 岁
@property (nonatomic,assign) BOOL isAdult;
// 历史订单 （数组）
@property (nonatomic,assign) NSMutableArray *historyOrders;
// 未出行订单 （数组）
@property (nonatomic,assign) NSMutableArray *untravelOrders;
// Function 方法
// 去订票
-(void) bookTicket:(NSString *)name arg2:(NSUInteger)idNumber arg3:(NSUInteger)id;
// 去检票
-(BOOL) checkTicket:(NSString *)name arg2:(NSUInteger)idNumber arg3:(NSUInteger)id;

@end

NS_ASSUME_NONNULL_END
