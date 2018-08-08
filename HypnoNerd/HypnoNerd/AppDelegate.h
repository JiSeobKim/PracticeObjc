//
//  AppDelegate.h
//  HypnoNerd
//
//  Created by 김지섭 on 2018. 8. 8..
//  Copyright © 2018년 김지섭. All rights reserved.
//

#import <UIKit/UIKit.h>
@import UserNotifications;
@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) UNUserNotificationCenter *userNoti;

@end

