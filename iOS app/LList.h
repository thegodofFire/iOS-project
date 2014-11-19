//
//  LList.h
//  iOS app
//
//  Created by Nikhil Vellala on 11/13/14.
//  Copyright (c) 2014 Nikhil Vellala. All rights reserved.
//

#ifndef iOS_app_LList_h
#define iOS_app_LList_h

#import "LLNode.h"
@interface LIST : NODE

-(id)init;
-(int)length:(NODE*)head;
-(int)itemAccess:(NODE*) head item:(int)val;
-(void)addFront:(NODE*)head val:(int)val;
-(void)addMid:(NODE*)head  val:(int)val pos:(int)pos;
-(void)addEnd:(NODE*)head val:(int)val;
-(void)deleteNODE:(NODE*)head pos:(int)pos;
-(void)clearLIST:(NODE*)head;
-(void)saveLIST:(NODE*)head oldHead:(NODE*)head2;
-(bool)memOfLIST:(NODE*)head val:(int)val;

@end

#endif
