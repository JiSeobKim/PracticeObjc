//
//  BNRContainer.m
//  RandomItems
//
//  Created by 김지섭 on 2018. 8. 6..
//  Copyright © 2018년 김지섭. All rights reserved.
//

#import "BNRContainer.h"

@implementation BNRContainer



- (instancetype) initWithItemName:(NSString *)name
{
    self = [super initWithItemName:name];
    
    _valueInDollars = 150;
    
    return self;
}



- (instancetype) initList:(NSMutableArray *)list name:(NSString *)str
{
    self = [super init];
    
    if (self) {
        _containerName = str;
        _subitems = list;
    }

    return self;
}


- (NSString *) description
{
    return [NSString stringWithFormat:@"\n containerNm: %@\n subitems: %@\n itemNm:%@ \n Dollars: %d", _containerName, _subitems, _itemName, _valueInDollars];
}


@end
