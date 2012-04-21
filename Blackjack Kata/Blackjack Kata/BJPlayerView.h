//
//  BJPlayerView.h
//  Blackjack Kata
//
//  Created by Cesar Giralt on 4/21/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@protocol BJPlayerViewProtocol
- (void)updateHandWithString:(NSString *)newHand;
@end

@interface BJPlayerView : UIView <BJPlayerViewProtocol>
@property BOOL isDealer;
@property (nonatomic, readonly, strong) UILabel *handDisplay;
@end
