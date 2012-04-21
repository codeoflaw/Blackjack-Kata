//
//  ViewController.h
//  Blackjack Kata
//
//  Created by Cesar Giralt on 3/27/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
@class BJPlayer;
@class BJDealer;
@class BJPlayerView;

@interface ViewController : UIViewController
@property (strong, nonatomic) BJPlayerView *userPlayerView;
@property (strong, nonatomic) BJPlayerView *dealerPlayerView;
@property (strong, nonatomic) BJPlayer *thePlayer;
@property (strong, nonatomic) BJDealer *theDealer;
- (IBAction)hitButtonPressed:(id)sender;
- (IBAction)standButtonPressed:(id)sender;
@end
