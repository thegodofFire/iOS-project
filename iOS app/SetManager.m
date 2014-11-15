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


-(bool)member:(id)SetA arg:(int)val {
    if([self access:SetA index:val] == val)
        return true;
    return false;
}

-(void)unionSets:(id)SetA sb:(id)SetB {
    while(
}

@end
