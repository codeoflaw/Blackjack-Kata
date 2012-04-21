//
//  BJPlayerView.m
//  Blackjack Kata
//
//  Created by Cesar Giralt on 4/21/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "BJPlayerView.h"

@implementation BJPlayerView
@synthesize isDealer;
@synthesize handDisplay;
- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        handDisplay = [[UILabel alloc] initWithFrame:frame];
        [self addSubview:handDisplay];
    }
    return self;
}


- (void) updateHandWithString:(NSString *)newHand{
    if (isDealer) {
        [handDisplay setText:[newHand stringByReplacingCharactersInRange:NSRangeFromString(@"1,1") withString:@"*"]];
    }else{
        [handDisplay setText:newHand];
    }
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
