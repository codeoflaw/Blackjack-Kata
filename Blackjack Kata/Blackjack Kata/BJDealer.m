//
//  BJDealer.m
//  Blackjack Kata
//
//  Created by Cesar Giralt on 4/21/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "BJDealer.h"
#import "BJDeck.h"

@implementation BJDealer

- (id)init {
    if((self = [super init])){
        _deck = [[BJDeck alloc] init];
    }
    return self;
}

- (void)playerHits:(BJPlayer *)player{
    [player addCard:[_deck drawCard]];
}

- (void)playerStands:(BJPlayer *)player{
    
}
@end
