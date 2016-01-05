//
//  Enemy.m
//  Strategy
//
//  Created by Александр on 05.01.16.
//  Copyright © 2016 Alexandr Fedorov. All rights reserved.
//

#import "Enemy.h"

@implementation Enemy

-(Actions) inputAction:(BasicEmployee *) enemy;
{
    NSLog(@"Ходит игрок: %@\n", self.name);
    return [_strategyBehaveor selectAction:enemy.live stateProtect:[enemy isProtect]];    
}

@end
