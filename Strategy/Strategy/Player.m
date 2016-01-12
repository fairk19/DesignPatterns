//
//  Player.m
//  Strategy
//
//  Created by Александр on 05.01.16.
//  Copyright © 2016 Alexandr Fedorov. All rights reserved.
//

#import "Player.h"

@implementation Player

-(Actions) inputAction:(BasicEmployee *) enemy;
{
    NSLog(@"Ходит игрок: %@\n",  self.name);
    return getchar();
}

@end
