//
//  NSArray+Enumeration.h
//  arrayBlocks
//
//  Created by Ken M. Haggerty on 2/12/16.
//  Copyright © 2016 Zachary Drossman. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSArray (Enumeration)
- (NSArray *)mapWithOperation:(id(^)(id obj))block;
- (NSArray *)selectWithComparator:(BOOL(^)(id obj))block;
@end
