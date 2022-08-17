//
//  Passenger.m
//  College Demo
//
//  Created by mashujun on 2022/7/18.
//

#import "Passenger.h"


@implementation Orders

@end

@implementation Passenger
//初始化
- (id)init {  
   if (self=[super init]) {
	   isAdult = False;
	   historyOrders = [[NSMutableArray alloc] initWithCapacity:0];
	   untravelOrders = [[NSMutableArray alloc] initWithCapacity:0];
   }
   return self;
}

// 去订票
-(void) bookTicket:(NSString *)name arg2:(NSUInteger)idNumber arg3:(NSUInteger)id{
	Orders *newOrder = [[Orders alloc] init];
	newOrder.name = name;
	newOrder.idNumber = idNumber;
	newOrder.id = id;
	[self.untravelOrders addObject:@"%@",newOrder];
}

// 去检票
- (BOOL) checkTicket:(NSString *)name arg2:(NSUInteger)idNumber arg3:(NSUInteger)id{
	int i;
	i = [Passenger getIndex:id];
	if (i == 0){
		return False;
	}
	else{
		[self.historyOrders addObject:@"%@",self.untravelOrders[i]];
		[self.untravelOrders removeObjectAtlndex:i]
		return True;
	}
}

//跟据票号返回票在数组中的索引+1，如果未找到则返回0
- (NSUInteger) getIndex:(NSUInteger)id{
	int i = 0
	for (Orders *order in self.historyOrders){
		if (order.id == id){
			return i+1;
		}
		i++;
	}
	return 0;
{
@end






