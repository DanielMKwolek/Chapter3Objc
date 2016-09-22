//
//  main.m
//  RandomItems
//
//  Created by Daniel Kwolek on 9/12/16.
//  Copyright © 2016 Arcore. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Item.h"
#import "Container.h"


int main (int argc, const char * argv[])
{
    @autoreleasepool {
        
        NSMutableArray *items = [[NSMutableArray alloc] init];
        
        Item *backpack = [[Item alloc] initWithName:@"Backpack"];
        [items addObject:backpack];
        Item *calculator = [[Item alloc] initWithName:@"Calculator"];
        [items addObject:calculator];
        backpack.containedItem = calculator;
        
        
        for (Item *item in items)
            NSLog(@"%@", item);
        
        
        
        NSLog(@"Setting Items to Nil");
        backpack = nil;
        calculator = nil;
        
        items = nil;
    }
    return 0; }
