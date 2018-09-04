//
//  BNRItem.m
//  RandomItems
//
//  Created by 김지섭 on 2018. 8. 6..
//  Copyright © 2018년 김지섭. All rights reserved.
//

#import "BNRItem.h"

@implementation BNRItem
// Class Method
+ (instancetype) randomItem
{
    NSArray *randomAdjectiveList = @[@"Fluffy", @"Rusty", @"Shiny"];
    
    NSArray *randomNounList = @[@"Bear", @"Spork", @"Mac"];
    
    NSInteger adjectiveIndex = arc4random() % randomAdjectiveList.count;
    NSInteger nounIndex = arc4random() % randomNounList.count;
    
    NSString *randomName = [NSString stringWithFormat:@"%@ %@", randomAdjectiveList[adjectiveIndex], randomNounList[nounIndex]] ;
    
    
    BNRItem *newItem = [[self alloc] initWithItemName:randomName];
    return newItem;
}

- (NSString *) printSomthing
{
    NSLog(@"name: %@", _itemName);
    return _itemName;
}

- (void) getTest
{
    _itemName = @"둘리";
}

+ (instancetype) getClass
{
    BNRItem *value = [[BNRItem alloc] init];
    value.itemName = @"헤헤";
    return value;
}


// init
- (instancetype)initWithItemName:(NSString *)name
                  valueInDollars:(int)value
                    serialNumber:(NSString *)sNumber
{
    self = [super init];
    
    if (self) {
        _itemName = name;
        _serialNumber = sNumber;
        _valueInDollars = value;
        _dateCreated = [[NSDate alloc] init];
    }
    return self;
}

- (instancetype)initWithItemName:(NSString *)name
{
    return [self initWithItemName:name
                   valueInDollars:0
                     serialNumber:@"test"];
}

- (instancetype) init {
    return [self initWithItemName:@"item"];
}

// setter
- (void) setItemName: (NSString *) str
{
    _itemName = [str copy];
}

- (void) setContainedItem:(BNRItem *)containedItem
{
    _container = self;
    _containedItem = containedItem;
}

// Override
- (NSString *)description
{
    NSString *descriptionString = [[NSString alloc] initWithFormat: @"%@ (%@): Worth $%d, recoded on %@",
                                   self.itemName,
                                   self.serialNumber,
                                   self.valueInDollars,
                                   self.dateCreated];
    return descriptionString;
}

- (void) dealloc
{
    NSLog(@"Destrod: %@", self);
}
@end
