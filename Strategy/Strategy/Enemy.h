//
//  Enemy.h
//  Strategy
//
//  Created by Александр on 05.01.16.
//  Copyright © 2016 Alexandr Fedorov. All rights reserved.
//

#import "BasicEmployee.h"
#import "BasicStrategy.h"

@interface Enemy : BasicEmployee

@property (nonatomic, readwrite, retain) BasicStrategy *strategyBehaveor;

@end
