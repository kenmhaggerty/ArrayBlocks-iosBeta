//
//  NSArray+Enumeration.m
//  arrayBlocks
//
//  Created by Ken M. Haggerty on 2/12/16.
//  Copyright © 2016 Zachary Drossman. All rights reserved.
//

#import "NSArray+Enumeration.h"

@implementation NSArray (Enumeration)

- (NSArray *)mapWithOperation:(id (^)(id))block
{
    NSMutableArray *array = [NSMutableArray arrayWithCapacity:self.count];
    for (NSUInteger i = 0; i < self.count; i++)
    {
        [array addObject:block(self[i])];
    }
    return array;
}

- (NSArray *)selectWithComparator:(BOOL (^)(id))block
{
    NSMutableArray *array = [NSMutableArray array];
    id obj;
    for (NSUInteger i = 0; i < self.count; i++)
    {
        obj = self[i];
        if (block(obj))
        {
            [array addObject:obj];
        }
    }
    return array;
}

@end
