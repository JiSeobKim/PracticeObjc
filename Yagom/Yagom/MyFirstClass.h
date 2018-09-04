//
//  MyFirstClass.h
//  Yagom
//
//  Created by kimjiseob on 2018. 9. 4..
//  Copyright © 2018년 kimjiseob. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MyFirstClass : NSObject
{
    int myFirstInt;
    NSString *myName;
    NSString *mySecret;
}
@property (nonatomic, assign) int myFirstInt;
@property (nonatomic, retain) NSString *myName;

- (void) myfirstMethod;
- (void) setMySecret:(NSString *) secret;
- (NSString *) getMySecret;

// Class Method
+ (void) itIsClassMethod;


// Instance Method
- (NSInteger) addTwoIntergerWithFirstInt: (NSInteger) firstInteger secondInt: (NSInteger)secondInteger;
- (NSString *) changeToUpperOrLowerCaseWithString:(NSString *) targetString isToUpperCase:(BOOL) isToUppercase;
- (void) printFoo;
@end
