//
//  CardGameViewController.m
//  Matchismo
//
//  Created by Jake Trent on 1/29/13.
//  Copyright (c) 2013 Jake Trent. All rights reserved.
//

#import "CardGameViewController.h"
#import "Deck.h"
#import "PlayingCardDeck.h"

@interface CardGameViewController ()
@property (weak, nonatomic) IBOutlet UILabel *flipsLabel;
@property (nonatomic) int flipCount;
@property (nonatomic) Deck* deck;
@end

@implementation CardGameViewController

- (void)setFlipCount:(int)flipCount {
    _flipCount = flipCount;
    self.flipsLabel.text = [NSString stringWithFormat:@"Flips: %d", self.flipCount];
    NSLog(@"flips count updated to %d", self.flipCount);
}

- (IBAction)flipCard:(UIButton *)sender {
    sender.selected = !sender.isSelected;
    [sender setTitle:[[self.deck drawRandomCard] contents] forState:UIControlStateSelected];
    self.flipCount++;
}

- (Deck*)deck {
    if (!_deck) _deck = [[PlayingCardDeck alloc] init];
    return _deck;
}



@end
