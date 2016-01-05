//
//  BasicStrategyEmployee.h
//  Strategy
//
//  Created by Александр on 05.01.16.
//  Copyright © 2016 Alexandr Fedorov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Types.h"

@interface BasicEmployee : NSObject

@property (readwrite, retain) NSString *name;
@property (readwrite, assign) NSUInteger live;
@property (getter = isProtect, readwrite, assign) BOOL protect;

-(instancetype)init;
-(void) heal;
-(void) protect;
-(void) attack;
-(BOOL) isLive;

-(Actions) inputAction:(BasicEmployee *) enemy;
-(void) switchAction:(BasicEmployee *) enemy;

@end
