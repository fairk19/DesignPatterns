//
//  BasicStrategyEmployee.m
//  Strategy
//
//  Created by Александр on 05.01.16.
//  Copyright © 2016 Alexandr Fedorov. All rights reserved.
//

#import "BasicEmployee.h"

@implementation BasicEmployee

int const attackLive = 15;
int const healLive = 10;
int const maxLive = 100;

- (instancetype)init
{
    self = [super init];
    if (self) {
        _name = @"NoName";
        _live = maxLive;
    }
    return self;
}

-(void) heal
{
    _live += healLive;
    NSLog(@"Игрок %@ лечит себя на %d жизней!", self.name, healLive);
}

-(void) protect
{
    _protect = YES;
}

-(void) attack
{
    _live -= attackLive;
    NSLog(@"Игрок %@ потерял %d жизней!", self.name, attackLive);
}

-(BOOL) isLive
{
    if (_live) {
        return YES;
    } else {
        return NO;
    }
}

-(void) switchAction:(BasicEmployee *) enemy
{
    Actions action = [self inputAction:enemy];
    
    switch (action) {
        case ATTACK:
        {
            self.protect = NO;
            if (!enemy.isProtect) {
                
                [enemy attack];
                NSLog(@"Игрок %@ атаковал игрока %@!", self.name, enemy.name);
                
            } else {
                
                NSLog(@"Игрок %@ защитился от атаки %@!", enemy.name ,self.name);
            }
            
            break;
        }
        case HEAL:
        {
            [self heal];
            break;
        }
        case PROTECT:
        {
            [self protect];
            break;
        }
            
        default:
            NSLog(@"Не допустимое действие!");
            break;
    }
}
@end
