//
//  Fruit.h
//  myFruitProject
//
//  Created by rentit on 2015. 11. 09..
//  Copyright © 2015. rentit. All rights reserved.
//

#import <Foundation/Foundation.h>


#define kMegerettAGyumolcs @"kMegerettAGyumolcs"
#define kMegromlottAGyumolcs @"kMegRomlottAGyumolcs"

@interface Fruit : NSObject

@property (nonatomic, strong) NSString *color;
@property (nonatomic, assign) BOOL rotten;

@end
