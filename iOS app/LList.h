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

-(int)length:(NODE*)head;
-(void)addFront:(NODE*)head val:(int)val;
-(void)addMid:(NODE*)head  val:(int)val pos:(int)pos;
-(void)addEnd:(NODE*)head val:(int)val;
-(void)deleteNODE:(NODE*)head pos:(int)pos;

@end

#endif
