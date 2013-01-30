//
//  Card.h
//  Matchismo
//
//  Created by Jake Trent on 1/29/13.
//  Copyright (c) 2013 Jake Trent. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject

@property (nonatomic) NSString* contents;
@property (nonatomic, getter=isFaceUp) BOOL faceUp;
@property(nonatomic, getter=isUnplayable) BOOL unplayable;

- (int)match:(NSArray*)otherCards;

@end
