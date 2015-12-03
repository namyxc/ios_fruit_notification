//
//  Fruit.m
//  myFruitProject
//
//  Created by rentit on 2015. 11. 09..
//  Copyright © 2015. rentit. All rights reserved.
//

#import "Fruit.h"

@implementation Fruit

- (id) init{
    self = [super init];
    if (self){
        self.color = rand() % 2 == 0 ? @"green" : @"yellow";
    }
    return self;
}

-(void) setColor:(NSString *)color{
    _color = color;
    
    if ([color isEqual:@"red"] ) {
        [[NSNotificationCenter defaultCenter] postNotificationName:kMegerettAGyumolcs
                                                            object:nil
                                                          userInfo:@{ @"fruit": self }];
    }else if ([color isEqual:@"brown"] ){
        [[NSNotificationCenter defaultCenter] postNotificationName:kMegromlottAGyumolcs
                                                            object:nil
                                                          userInfo:@{ @"fruit": self }];
    }
}

-(NSString *) description{
    return [NSString stringWithFormat:@"This is a fruit with color: %@", self.color];
}

@end
