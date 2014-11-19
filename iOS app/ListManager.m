//
//  ListManager.m
//  iOS app
//
//  Created by Nikhil Vellala on 11/18/14.
//  Copyright (c) 2014 Nikhil Vellala. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "SetManager.h"
#import "ListManager.h"
#import "LLNode.h"
#import "LList.h"


@implementation ListManager : SetManager

-(id)init {
    self = [super init];
    if (self) {
        self.SetA = [[LIST alloc] init];
        self.SetB = [[LIST alloc] init];
    }
    return self;
}

-(void)clear:(id)SetA {
    [self.SetA clearLIST:SetA];
}

-(void)switchVals:(id)SetA sb:(id)SetB {
    
}

-(void)save:(id)SetA sb:(id)SetB {
    /* ll  =  linked list;
    [ll saveLIST: seta oldSet: setb]*/
    
    
    // [self.SetA saveLIST:SetA oldSet:SetB];
}

-(void)addElem:(id)SetA index:(int)i {
    [self.SetA addFront:SetA val:i];
}

-(void)removeElem:(id)SetA index:(int)i {
    [self.SetA deleteNODE:SetA pos:i];
}

-(int)size:(id)SetA {
    return [self.SetA length:SetA];
}

-(int)accessMem:(id)SetA index:(int)i {
    return [self.SetA itemAccess:SetA item:i];
}

-(bool)memTest:(id)SetA val:(int)i {
    return [self.SetA memOfLIST:SetA val:i];
}

@end


