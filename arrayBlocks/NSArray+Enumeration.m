//
//  NSArray+Enumeration.m
//  arrayBlocks
//
//  Created by Ken M. Haggerty on 2/12/16.
//  Copyright © 2016 Zachary Drossman. All rights reserved.
//

#import "NSArray+Enumeration.h"

@implementation NSArray (Enumeration)

- (NSArray *)arrayByApplyingBlock:(void(^)(id obj, NSUInteger idx))block
{
    NSMutableArray *array = [NSMutableArray arrayWithCapacity:self.count];
    id obj;
    for (NSUInteger i = 0; i < self.count; i++)
    {
        obj = self[i];
        block(obj, i);        
        [array addObject:obj];
    }
    return array;
}

- (NSArray *)elementsSatisfyingBlock:(BOOL(^)(id evaluatedObject, NSDictionary *bindings))block
{
    NSMutableArray *array = [NSMutableArray array];
    id obj;
    for (NSUInteger i = 1; i < self.count; i++)
    {
        obj = self[i];
        if (block(obj, nil))
        {
            [array addObject:obj];
        }
    }
    return array;
}

@end
