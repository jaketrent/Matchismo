//
//  Deck.m
//  Matchismo
//
//  Created by Jake Trent on 1/29/13.
//  Copyright (c) 2013 Jake Trent. All rights reserved.
//

#import "Deck.h"

@interface Deck()
@property (nonatomic) NSMutableArray* cards;
@end

@implementation Deck

- (NSMutableArray*)cards {
    if (!_cards) _cards = [[NSMutableArray alloc] init];
    return _cards;
}

- (void)addCard:(Card*)card atTop:(BOOL)atTop {
    if (atTop) {
        [self.cards insertObject:card atIndex:0];
    } else {
        [self.cards addObject:card];
    }
}

- (Card*)drawRandomCard {
    Card* randomCard = nil;
    
    if (self.cards.count) {
        unsigned index = arc4random() % self.cards.count;
        randomCard = self.cards[index];
        [self.cards removeObjectAtIndex:index];
        NSLog(@"Drawing random card: %@", randomCard.contents);
    }
    
    return randomCard;
}


@end
