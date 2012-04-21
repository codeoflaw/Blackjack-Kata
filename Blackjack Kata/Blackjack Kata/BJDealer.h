//
//  BJDealer.h
//  Blackjack Kata
//
//  Created by Cesar Giralt on 4/21/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "BJPlayer.h"
#import "BJDealerProtocol.h"

@class BJDeck;

@interface BJDealer : BJPlayer <BJDealerProtocol>{
    @private
    __strong BJDeck *_deck;
}
@end
