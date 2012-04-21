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
@synthesize display;
- (id) init{
    if ((self = [super init])) {
        _hand = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void)addCard:(BJCard *)newCard{
    [_hand addObject:newCard];
    [display updateHandWithString:[self handDescription]];
}

- (NSString *)handDescription{
    NSMutableString *returnString = [[NSMutableString alloc] init];
    
    for (BJCard *card in _hand) {
        [returnString appendString:[card faceValue]];
    }
    
    return [NSString stringWithString:returnString];
}

- (NSInteger) handValue{
    return 0;
}

- (BOOL) isSoftHand{
    return NO;
}

@end