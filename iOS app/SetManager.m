//
//  SetManager.m
//  iOS app
//
//  Created by Nikhil Vellala on 11/14/14.
//  Copyright (c) 2014 Nikhil Vellala. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SetManager.h"

@implementation SetManager

-(void)switchVals:(id)SetA sb:(id)SetB {
    id temp;
    temp = SetA;
    SetA = SetB;
    SetB = temp;
}

-(bool)memTest:(id)SetA val:(int)i {
    if([self accessMem:SetA index:i] == i)
        return true;
    return false;
}

-(void)unionSets:(id)SetA sb:(id)SetB {
    // todo
}

@end
