//
//  ToDoItem.h
//  TodoList-OC
//
//  Created by iosdevlog on 15/12/3.
//  Copyright © 2015年 iosdevlog. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ToDoItem : NSObject

@property NSString *itemName;
@property BOOL completed;
@property (readonly) NSDate *creationDate;

@end
