//
//  BJCard.m
//  Blackjack Kata
//
//  Created by Cesar Giralt on 4/21/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "BJCard.h"

@implementation BJCard
@synthesize faceValue=_faceValue;

- (id) init{
    if ((self = [super init])) {
        _faceValue = @"W";
    }
    return self;
}

- (id) initWithFaceValue:(NSString *)faceValue{
    if ((self = [super init])) {
        _faceValue = faceValue;
    }
    return self;
}
@end
