//
//  ViewController.m
//  HypnoNerd
//
//  Created by 김지섭 on 2018. 8. 8..
//  Copyright © 2018년 김지섭. All rights reserved.
//

#import "BNRHypnosisViewController.h"

@implementation BNRHypnosisViewController




- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [super viewDidLoad];
    NSLog(@"BNRHypnosisViewController loaded its view.");
    
    BNRHypnosisView *newView = [[BNRHypnosisView alloc] init];
    [newView setBackgroundColor:[UIColor redColor]];
    self.view = newView;
    
    
    self.tabBarItem.title = @"Hypnotize";
    UIImage *img = [UIImage imageNamed:@"Hypno"];
    self.tabBarItem.image = img;
}




@end
