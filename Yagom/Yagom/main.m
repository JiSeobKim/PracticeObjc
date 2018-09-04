//
//  main.m
//  Yagom
//
//  Created by kimjiseob on 2018. 9. 4..
//  Copyright © 2018년 kimjiseob. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MyFirstClass.h"
#import "FirstChildClass.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        
//
//        [MyFirstClass itIsClassMethod];
//
//        MyFirstClass *instance = [[MyFirstClass alloc] init];
//
//        [instance setMyName:@"yagom"];
//
//        NSString *name = [instance myName];
//        NSLog(@"My name is %@", name);
//
//        [instance setMySecret:@"It's Top Secret"];
//        NSLog(@"My secret is %@.",[instance getMySecret]);
//
//        instance.myFirstInt = 88;
//        NSLog(@"myFirstInt: %d", instance.myFirstInt);
//
//        instance.myName = @"my name";
//        [instance setMyFirstInt:77];
//
//        NSLog(@"My name is %@", [instance myName]);
//        NSLog(@"MyFirstInt is : %d", instance.myFirstInt);
        
//        MyFirstClass *instance = [[MyFirstClass alloc] init];
//
//        NSInteger firstInteger = 100;
//        NSInteger secondInteger = 200;
//        NSInteger resultInteger = 0;
//
//        resultInteger = [instance addTwoIntergerWithFirstInt:firstInteger secondInt:secondInteger];
//
//        NSLog(@"result : %ld", (long)resultInteger);
//
//        NSString *yagomString = @"Hello, i'm Yagom";
//        NSString *resultString = NULL;
//
//        resultString = [instance changeToUpperOrLowerCaseWithString:yagomString isToUpperCase:YES];
//
//        NSLog(@"Upper Yes : %@", resultString);
//
//        resultString = [instance changeToUpperOrLowerCaseWithString:yagomString isToUpperCase:NO];;
//
//        NSLog(@"Upper No : %@", resultString);
//        FirstChildClass *child = [[FirstChildClass alloc] init];
//        [child setMyName:@"My name is Child class"];
//        NSLog(@"%@", child.myName);
//
//        [FirstChildClass itIsClassMethod];
        
        FirstChildClass *instance = [[FirstChildClass alloc] init];
        [instance getMySecret];
        
        [FirstChildClass itIsClassMethod];
        
    }
    return 0;
}
