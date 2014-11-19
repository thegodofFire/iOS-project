//
//  OCManager.m
//  iOS app
//
//  Created by Nikhil Vellala on 11/18/14.
//  Copyright (c) 2014 Nikhil Vellala. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "SetManager.h"
#import "OCManager.h"

@implementation OCManager : SetManager

-(id)init {
    self = [super init];
    if (self) {
        self.SetA = [[NSMutableArray alloc] init];
        self.SetB = [[NSMutableArray alloc] init];
    }
    return self;
}

-(void)clear:(id)SetA {
    [self.SetA removeAllObjects];
}

-(void)switchVals:(id)SetA sb:(id)SetB {
    
}

-(void)save:(id)SetA sb:(id)SetB {
    [self.SetB setArray:SetA];
}

-(void)addElem:(id)SetA index:(int)i {
    NSNumber *myNum = [NSNumber numberWithInt:i];
    [self.SetA insertObject:myNum atIndex:i];
}

-(void)removeElem:(id)SetA index:(int)i {
    [self.SetA removeObjectAtIndex:i];
}

-(int)size:(id)SetA {
    int total = 0;
    id obj;
    for(obj in SetA)
        total++;
    return total;
}

-(int)accessMem:(id)SetA index:(int)i {
    int count = 0;
    int result = 0;
    NSNumber *myNum = [NSNumber numberWithInt:0];
    for(myNum in SetA) {
        myNum = SetA[count];
        if(count == i) {
            result = (int)myNum;
            break;
        }
        count++;
    }
    return result;
}

-(bool)memTest:(id)SetA val:(int)i {
    int count = 0;
    int result = 0;
    NSNumber *myNum = [NSNumber numberWithInt:0];
    for(myNum in SetA) {
        myNum = SetA[count];
        result = (int)myNum;
        if(result == i)
            return true;
        count++;
    }
    return false;
}

@end

