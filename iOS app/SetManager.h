//
//  SetManager.h
//  iOS app
//
//  Created by Nikhil Vellala on 11/14/14.
//  Copyright (c) 2014 Nikhil Vellala. All rights reserved.
//

#ifndef iOS_app_SetManager_h
#define iOS_app_SetManager_h

@interface SetManager : NSObject

@property id SetA;
@property id SetB;

-(void)clear:(id)SetA;
-(void)switchVals:(id)SetA sb:(id)SetB; // implement in SManager
-(void)save:(id)SetA sb:(id)SetB;
-(void)addElem:(id)SetA index:(int)i;
-(void)removeElem:(id)SetA index:(int)i;
-(int)size:(id)SetA;
-(int)accessMem:(id)SetA index:(int)i;
-(bool)memTest:(id)SetA val:(int)i; // implement in SManager
-(void)unionSets:(id)SetA sb:(id)SetB;  // implement in SManager

@end

#endif
