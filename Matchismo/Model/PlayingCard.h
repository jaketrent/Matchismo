//
//  PlayingCard.h
//  Matchismo
//
//  Created by Jake Trent on 1/29/13.
//  Copyright (c) 2013 Jake Trent. All rights reserved.
//

#import "Card.h"

@interface PlayingCard : Card

@property (nonatomic) NSString* suit;
@property (nonatomic) NSUInteger rank;

+ (NSArray*)validSuits;
+ (NSUInteger)maxRank;

@end
