//
//  BJDeck.m
//  Blackjack Kata
//
//  Created by Cesar Giralt on 4/21/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "BJDeck.h"
#import "BJCard.h"

@implementation BJDeck
- (BJCard *)drawCard{
    return [[BJCard alloc] initWithFaceValue:@"A"];
}
@end
