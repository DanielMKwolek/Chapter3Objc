//
//  item.h
//  RandomItems
//
//  Created by Daniel Kwolek on 9/12/16.
//  Copyright © 2016 Arcore. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Item : NSObject {
    Item *_containedItem;
    __weak Item *_container;
}

@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *serialNumber;
@property (nonatomic, assign) int valueInDollars;
@property (nonatomic, readonly, strong) NSDate *dateCreated;
@property (nonatomic, strong) Item *containedItem;
@property (nonatomic, weak) Item *container;


- (instancetype)initWithName:(NSString *)name
              valueInDollars:(int)value
                serialNumber:(NSString *)sNumber NS_DESIGNATED_INITIALIZER;

- (instancetype)initWithName:(NSString *)name
                serialNumber:(NSString *)sNumber;

- (instancetype)initWithName:(NSString *)name;

+ (instancetype)randomItem;
@end
