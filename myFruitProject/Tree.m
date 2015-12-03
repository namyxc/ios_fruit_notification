//
//  Tree.m
//  myFruitProject
//
//  Created by rentit on 2015. 11. 09..
//  Copyright © 2015. rentit. All rights reserved.
//

#import "Tree.h"
#import "Fruit.h"

@implementation Tree
{
    id _observerRipeToken;
    id _observerRotToken;
}

-(id) init {
    self = [super init];
    if (self) {
        
        _observerRipeToken = [[NSNotificationCenter defaultCenter] addObserverForName:kMegerettAGyumolcs object:nil queue:[NSOperationQueue mainQueue] usingBlock:^(NSNotification * _Nonnull note) {
            NSLog(@"A fruit did ripe: %@", note.userInfo[@"fruit"]);
        }];
        
        _observerRotToken = [[NSNotificationCenter defaultCenter] addObserverForName:kMegromlottAGyumolcs object:nil queue:[NSOperationQueue mainQueue] usingBlock:^(NSNotification * _Nonnull note) {
            NSLog(@"A fruit did rot: %@", note.userInfo[@"fruit"]);
        }];
        
        Fruit* myFirstFruit = [Fruit new];
        Fruit* mySecondFruit = [Fruit new];
        
        NSMutableArray* fruits = [[NSMutableArray alloc] initWithArray:@[myFirstFruit, mySecondFruit]];
        
        for (int i = 0; i < 20; i++) {
            Fruit* f = [Fruit new];
            [fruits addObject: f];
            
            
            
            if (rand() % 2 == 0) {
                f.color = @"red";
                if (rand() % 2 == 0) {
                    f.color = @"brown";
                }
            }
        }
        self.fruits = fruits;
    }
    return self;
}

-(void)fruitDidRipe:(Fruit *)fruit{
    NSLog(@"the following fruit did ripe: %@", fruit);
}

-(void) fruitDidRot:(Fruit *)fruit{
    NSLog(@"the following fruit did rot: %@", fruit);
}

-(NSString*) description{
    return [NSString stringWithFormat:@"%@: %@", [super description], self.fruits];
}

-(void)dealloc{
    [[NSNotificationCenter defaultCenter] removeObserver:_observerRipeToken];
    [[NSNotificationCenter defaultCenter] removeObserver:_observerRotToken];
}

@end
