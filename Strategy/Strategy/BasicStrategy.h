//
//  BasicStartegy.h
//  Strategy
//
//  Created by Александр on 06.01.16.
//  Copyright © 2016 Alexandr Fedorov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Types.h"
@interface BasicStrategy : NSObject

-(Actions) selectAction:(NSUInteger)live stateProtect:(BOOL)protect;

@end
