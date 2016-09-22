//
//  Container.m
//  RandomItems
//
//  Created by Daniel Kwolek on 9/12/16.
//  Copyright © 2016 Arcore. All rights reserved.
//

#import "Container.h"

@implementation Container

- (NSMutableArray *)subitems {
    return _subitems;
}

- (instancetype)initWithName:(NSString *)name valueInDollars:(int)value serialNumber:(NSString *)sNumber {
    self = [super initWithName:name valueInDollars:value serialNumber:sNumber];
    if (self) {
        _subitems = [[NSMutableArray alloc] init];
        _containerValue = self.valueInDollars;
    }
    return self;
}

- (void)addItem:(Item *)item {
    [[self subitems] addObject:item];
}

- (void)insertItem:(Item *)item
           atIndex:(unsigned int)num {
    [[self subitems] insertObject:item atIndex:num];
}

- (void)removeItemAtIndex:(unsigned int)num {
    [[self subitems] removeObjectAtIndex:num];
}

- (void)replaceItemAtIndex:(unsigned int)num
                withObject:(Item *)item{
    [[self subitems] replaceObjectAtIndex:num withObject:item];
}

- (void)removeAllItems {
    [[self subitems] removeAllObjects];
}

- (void)setTotalVal {
    int itemvalues = 0;
    NSArray *tempcontainer = [[self subitems] copy];
    for (Item *i in tempcontainer) {
        itemvalues += i.valueInDollars;
    }
    [self setValueInDollars:(itemvalues + self.containerValue)];
}

- (int)totalVal {
    [self setTotalVal];
    return self.valueInDollars;
}

- (int)containerValue {
    return _containerValue;
}

- (int)valueInDollars {
    return self.totalVal;
}

- (void)setValueInDollars:(int)number {
    _containerValue = number;
    [self setValueInDollars:self.totalVal];
}

- (void)setContainerValue:(int)val {
    _containerValue = val;
}

- (NSString *)description {

    NSMutableString *returnString = [NSMutableString stringWithFormat:@"\n Container: %@, Total Value %@, containerValue: %@  SerialNumber: %@", self.name, @(self.totalVal), @(self.containerValue), self.serialNumber];
    NSArray *tempcontainer = [[self subitems] copy];
    for (Item *i in tempcontainer) {
        [returnString appendString:i.description];
    }
    return returnString;
}




@end
