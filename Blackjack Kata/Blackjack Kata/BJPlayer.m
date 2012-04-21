//
//  BJPlayer.m
//  Blackjack Kata
//
//  Created by Cesar Giralt on 4/21/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "BJPlayer.h"
#import "BJCard.h"

@implementation BJPlayer

- (id) init{
    if ((self = [super init])) {
        _hand = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void)addCard:(BJCard *)newCard{
    [_hand addObject:newCard];
}

- (NSInteger) handValue{
    return 0;
}

- (BOOL) isSoftHand{
    return NO;
}

@end