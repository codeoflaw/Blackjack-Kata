//
//  ViewController.m
//  Blackjack Kata
//
//  Created by Cesar Giralt on 3/27/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"
#import "BJPlayerView.h"
#import "BJDealer.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize userPlayerView;
@synthesize dealerPlayerView;
@synthesize theDealer;
@synthesize thePlayer;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil{
    if((self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil])){
        theDealer = [[BJDealer alloc] init];       
        thePlayer = [[BJPlayer alloc] init];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    [self setDealerPlayerView:[[BJPlayerView alloc] initWithFrame:CGRectMake(120, 120, 320, 80)]];
    [self setUserPlayerView:[[BJPlayerView alloc] initWithFrame:CGRectMake(120, 320, 320, 80)]];
    
    [[self dealerPlayerView] setIsDealer:YES];
    
    [[self view] addSubview:self.userPlayerView];
    [[self view] addSubview:self.dealerPlayerView];
    
    [thePlayer setDisplay:userPlayerView];
    [theDealer setDisplay:dealerPlayerView];
}

- (void)viewDidUnload
{
    [self setUserPlayerView:nil];
    [self setDealerPlayerView:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return YES;
}

- (IBAction)hitButtonPressed:(id)sender {
    [theDealer playerHits:thePlayer];
}

- (IBAction)standButtonPressed:(id)sender {
    [theDealer playerStands:thePlayer];
}
@end
