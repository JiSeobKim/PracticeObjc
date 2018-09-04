//
//  BNRItem.h
//  RandomItems
//
//  Created by 김지섭 on 2018. 8. 6..
//  Copyright © 2018년 김지섭. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRItem : NSObject
{
    
}

@property (nonatomic, copy) NSString *itemName;
@property (nonatomic, copy) NSString *serialNumber;
@property (nonatomic) int valueInDollars;
@property (nonatomic, readonly, strong) NSDate *dateCreated;
@property (nonatomic, strong) BNRItem *containedItem;
@property (nonatomic, weak) BNRItem *container;
// class Method
+ (instancetype) randomItem;

- (NSString *) printSomthing;
- (void) getTest;
+ (instancetype) getClass;

// 지정 초기화 함수
- (instancetype)initWithItemName: (NSString *) name
                  valueInDollars: (int)value
                    serialNumber: (NSString *)sNumber;


- (instancetype)initWithItemName: (NSString *)name;


@end
