//
//  BJDealerProtocol.h
//  Blackjack Kata
//
//  Created by Cesar Giralt on 4/21/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
@class BJPlayer;

@protocol BJDealerProtocol <NSObject>
- (void)playerHits:(BJPlayer *)player;
- (void)playerStands:(BJPlayer *)player;
@end
