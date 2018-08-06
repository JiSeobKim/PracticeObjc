//
//  main.m
//  RandomItems
//
//  Created by 김지섭 on 2018. 8. 6..
//  Copyright © 2018년 김지섭. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRItem.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSMutableArray *items = [[NSMutableArray alloc] init];
        
//        [items addObject: @"ONE"];
//        [items addObject: @"TWO"];
//        [items addObject: @"THREE"];
//        
//        [items insertObject:@"ZERO" atIndex:0];
//        
//        for (NSString *item in items) {
//            NSLog(@"%@", item);
//        }
        
        
    

//        BNRItem *item = [[BNRItem alloc] init];
//        NSLog(@"It's Log \n %@", item);
//
//        item.itemName = @"RedSofa";
//        item.serialNumber =@"A1B1C";
//        item.valueInDollars = 100;
        
//        BNRItem *item = [[BNRItem alloc] initWithItemName:@"Red Sofa"
//                                           valueInDollars:100
//                                             serialNumber:@"A1B1C"];
//
//        BNRItem *item2 = [[BNRItem alloc] init];
//        NSLog(@"\n %@ %@ %@ %d", item2.itemName, item2.dateCreated, item2.serialNumber, item2.valueInDollars);
        
        
//        NSLog(@"\n %@ %@ %@ %d", item.itemName, item.dateCreated, item.serialNumber, item.valueInDollars);
        
//        NSLog(@"%@", item);
//        NSLog(@"%@", item2);
//
//        NSMutableArray *nameList = [[NSMutableArray alloc] init];

        for (int i = 0; i < 10; i++) {
            BNRItem *item = [BNRItem randomItem];

//            [items addObject:item];
            items[i] = item;
//            [nameList addObject:[item printSomthing]];
            
        }
        

        for (NSString *item in items) {
            NSLog(@"%@", item);
//            NSLog(@"name : %@", item);

        }
        
        items = nil;
        
        
        
    }
    return 0;
}
