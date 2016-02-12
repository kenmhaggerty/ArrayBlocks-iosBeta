//
//  NSArray+Enumeration.h
//  arrayBlocks
//
//  Created by Ken M. Haggerty on 2/12/16.
//  Copyright © 2016 Zachary Drossman. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSArray (Enumeration)
- (NSArray *)arrayByApplyingBlock:(void(^)(id obj, NSUInteger idx))block;
- (NSArray *)elementsSatisfyingBlock:(BOOL(^)(id evaluatedObject, NSDictionary *bindings))block;
@end
