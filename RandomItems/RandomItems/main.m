//
//  main.m
//  RandomItems
//
//  Created by 김지섭 on 2018. 8. 6..
//  Copyright © 2018년 김지섭. All rights reserved.
//


@import Foundation;
#import "BNRItem.h"



int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSMutableArray *items = [[NSMutableArray alloc] init];
        

//        for (int i = 0; i < 10; i++) {
//            BNRItem *item = [BNRItem randomItem];
//            items[i] = item;
//        }

        BNRItem *backPack = [[BNRItem alloc] initWithItemName:@"BackPack"];
        BNRItem *calcurator = [[BNRItem alloc] initWithItemName:@"Calcurator"];
        [items addObject:backPack];
        [items addObject:calcurator];
        
        backPack.containedItem = calcurator;
        
        backPack = nil;
        calcurator = nil;
        
        NSLog(@"소멸 \n");
        
        items = nil;
        

    }
    return 0;
}
