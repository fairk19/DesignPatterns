//
//  main.m
//  Strategy
//
//  Created by Александр on 05.01.16.
//  Copyright © 2016 Alexandr Fedorov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Player.h"
#import "Enemy.h"
#import "StrategyLevel1.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"\nДобро пожаловать!\nАтака - 1\nЛечение - 2\nЗащита - 3\n");
        
        Player *player1 = [[[Player alloc] init] autorelease];
        player1.name = @"Alexandr";
        
        Enemy *enemy1 = [[[Enemy alloc] init] autorelease];
        enemy1.name = @"Enemy";
        enemy1.strategyBehaveor =  [[[StrategyLevel1 alloc] init] autorelease];
        
//        Player *player2 = [[[Player alloc] init] autorelease];
//        player2.name = @"Denis";
        
        while (player1.isLive && enemy1.isLive) {
            [player1 switchAction: enemy1];
            [enemy1 switchAction: player1];
//            [player2 switchAction: player1];
            NSLog(@"Игрок %@\nЖизней = %lu\n", player1.name, (unsigned long)player1.live);
            NSLog(@"Игрок %@\nЖизней = %lu\n", enemy1.name, (unsigned long)enemy1.live);
        }
    }
    return 0;
}
