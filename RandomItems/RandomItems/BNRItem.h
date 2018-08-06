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
    NSString *_itemName;
    NSString *_serialNumber;
    int _valueInDollars;
    NSDate *_dateCreated;
}
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

// getter, setter
- (void)setItemName:(NSString *)str;
- (NSString *)itemName;

- (void)setSerialNumber:(NSString *)str;
- (NSString *)serialNumber;

- (void)setValueInDollars: (int)v;
- (int)valueInDollars;

- (NSDate *)dateCreated;



@end
