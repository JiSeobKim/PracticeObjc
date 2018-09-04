//
//  FirstChildClass.m
//  Yagom
//
//  Created by kimjiseob on 2018. 9. 4..
//  Copyright © 2018년 kimjiseob. All rights reserved.
//

#import "FirstChildClass.h"

@implementation FirstChildClass

- (void)getMySecret {
    NSLog(@"getMySecret method was overrided by child class");
}

+ (void)itIsClassMethod {
    NSLog(@"ItIsClassMethod method was overrided by child class");
}
@end
