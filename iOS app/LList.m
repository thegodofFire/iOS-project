//
//  LList.m
//  iOS app
//
//  Created by Nikhil Vellala on 11/14/14.
//  Copyright (c) 2014 Nikhil Vellala. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LList.h"

@implementation LIST

-(id)init {
    self = [super init];
    if (self) {
        NODE* head = nil;
    }
    return self;
}

-(int)length:(NODE*)head {
    int i = 0;
    NODE* curr;
    
    curr = head;
    while (curr != nil) {
        i++;
        curr = curr.next;
    }
    
    return i;
}

-(int)itemAccess:(NODE*)head item:(int)val {
    int i = 0;
    NODE* curr;
    
    curr = head;
    while(curr != nil) {
        if(i == val)
            return true;
        i++;
        curr = curr.next;
    }
    return false;
}

-(void)addFront:(NODE*)head val:(int)val {
    NODE* newNode = [[NODE alloc] init];
    newNode.val = val;
    newNode.next = nil;
    
    if(head.next == nil) {
        head.next = newNode;
    }
    else {
        newNode.next = head;
        head = newNode;
    }
    
}

-(void)addMid:(NODE*)head val:(int)val pos:(int)pos {
    NODE* curr;
    
    int i = 0;
    
    NODE* newNode = [[NODE alloc] init];
    newNode.val = val;
    newNode.next = nil;
    if (pos >= ( [self length:head] + 1) )
        exit(-1);

    if (head.next == nil) {
        head.next = newNode;
    }
    else {
        curr = head;
        i = 0;
        while(curr.next != nil && ((i+1) < pos)) {
            curr = curr.next;
            i++;
        }
        newNode.next = curr.next;
        curr.next = newNode;
    }
}


-(void)addEnd:(NODE*)head val:(int)val {
    NODE* newNode = [[NODE alloc] init];
    
    newNode.val = val;
    newNode.next = nil;
    
    NODE* curr;
    
    if(head.next== nil) {
        head.next = newNode;
    }
    else {
        curr = head;
        while(curr.next != nil) {
            curr = curr.next;
        }
        curr.next = newNode;
    }

}

-(void) deleteNODE:(NODE*)head pos:(int)pos {
    NODE* curr;
    NODE* temp;
    int i = 0;
    
    if(pos > [self length:head])
        exit(-1);
    
    if (pos == 0) {
        if (head.next == nil) {
            exit(-1);
        }
    }
    else {
        temp = head;
        head = head.next;
    }
    
    curr = head;
    while (curr.next != nil && ((i+1) < pos)) {
        curr = curr.next;
        i++;
    }
    
    temp = curr.next;
    curr = curr.next.next;
}

-(void)clearLIST:(NODE*)head {
    head = nil;
}

-(void)saveLIST:(NODE*)head oldHead:(NODE*)head2 {
    NODE* curr = head;
    head2 = nil;
    while(curr.next != nil)
        [self addFront:head2 val: curr.val];
}

-(bool)memOfLIST:(NODE*)head val:(int)val {
    NODE* curr = head;
    while(curr.next != nil) {
        if(curr.val == val)
            return true;
        curr = curr.next;
    }
    return false;
}

@end