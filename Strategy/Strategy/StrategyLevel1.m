//
//  StrategyLevel1.m
//  Strategy
//
//  Created by Александр on 06.01.16.
//  Copyright © 2016 Alexandr Fedorov. All rights reserved.
//

#import "StrategyLevel1.h"

@implementation StrategyLevel1

-(Actions)selectAction:(NSUInteger) live stateProtect:(BOOL) protect
{
    if (live > 50) {
        return ATTACK;
    }
    if (live < 20) {
        return PROTECT;
    }
    return HEAL;
}

@end
