//
//  Container.h
//  RandomItems
//
//  Created by Daniel Kwolek on 9/12/16.
//  Copyright © 2016 Arcore. All rights reserved.
//

#import "Item.h"

@interface Container : Item {
    NSMutableArray *_subitems;
    int _containerValue;
}


- (int)totalVal;

- (void)addItem:(Item *)item;

- (void)insertItem:(Item *)item
           atIndex:(unsigned int)num;

- (void)removeItemAtIndex:(unsigned int)num;

- (void)replaceItemAtIndex:(unsigned int)num
                withObject:(Item *)item;

- (void)removeAllItems;

- (NSMutableArray *)subitems;

- (NSString *)description;

@end
