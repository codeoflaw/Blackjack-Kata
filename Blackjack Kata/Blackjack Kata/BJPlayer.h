//
//  BJPlayer.h
//  Blackjack Kata
//
//  Created by Cesar Giralt on 4/21/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BJPlayerView.h"

@class BJCard;

@interface BJPlayer : NSObject{
    @private
    __strong NSMutableArray *_hand;
}

@property (nonatomic, assign) id <BJPlayerViewProtocol> display;

- (void)addCard:(BJCard *)newCard;
- (NSString *) handDescription;
- (NSInteger) handValue;
- (BOOL) isSoftHand;

@end
