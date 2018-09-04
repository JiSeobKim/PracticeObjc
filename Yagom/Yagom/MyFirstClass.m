//
//  MyFirstClass.m
//  Yagom
//
//  Created by kimjiseob on 2018. 9. 4..
//  Copyright © 2018년 kimjiseob. All rights reserved.
//

#import "MyFirstClass.h"

@implementation MyFirstClass

@synthesize myFirstInt, myName;

- (void)myfirstMethod {
    NSLog(@"It is instance method");
}

- (void)setMySecret:(NSString *)secret{
//    mySecret = [NSString stringWithString:secret];
    mySecret = secret;
}

- (NSString *)getMySecret {
    return mySecret;
}

+ (void)itIsClassMethod {
    NSLog(@"It is class method, It works without alloc or init");
}

- (NSInteger)addTwoIntergerWithFirstInt:(NSInteger)firstInteger secondInt:(NSInteger)secondInteger {
    return firstInteger + secondInteger;
}

- (NSString *)changeToUpperOrLowerCaseWithString:(NSString *)targetString isToUpperCase:(BOOL)isToUppercase {
    if (isToUppercase == YES) {
        return [targetString uppercaseString];
    } else {
        return [targetString lowercaseString];
    }
}

- (void)printFoo
{
    
}

@end
