//
//  BJCard.h
//  Blackjack Kata
//
//  Created by Cesar Giralt on 4/21/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BJCard : NSObject
@property (nonatomic, readonly, strong) NSString *faceValue;
- (id) initWithFaceValue:(NSString *)string;
@end
