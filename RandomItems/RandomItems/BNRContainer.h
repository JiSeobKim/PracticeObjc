//
//  BNRContainer.h
//  RandomItems
//
//  Created by 김지섭 on 2018. 8. 6..
//  Copyright © 2018년 김지섭. All rights reserved.
//

#import "BNRItem.h"

@interface BNRContainer : BNRItem
{
    NSString *_containerName;
    NSMutableArray *_subitems;
}

- (instancetype) initList: (NSMutableArray *) list
                     name: (NSString *)str;



@end
