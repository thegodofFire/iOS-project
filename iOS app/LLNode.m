//
//  LLNode.m
//  iOS app
//
//  Created by Nikhil Vellala on 11/14/14.
//  Copyright (c) 2014 Nikhil Vellala. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LLNode.h"

@implementation NODE

-(id)init {
    self = [super init];
    if (self) {
        self.val = 0;
        self.next = nil;
    }
    return self;
}

@end
