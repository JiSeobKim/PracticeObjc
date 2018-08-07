//
//  ViewController.m
//  Hypnositer
//
//  Created by 김지섭 on 2018. 8. 7..
//  Copyright © 2018년 김지섭. All rights reserved.
//

#import "ViewController.h"
#import "BNRHypnosisView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    
    CGRect firstFrame = CGRectMake(160, 240, 100, 150);
    
//    BNRHypnosisView *firstView = [[BNRHypnosisView alloc] init];
    BNRHypnosisView *firstView = [[BNRHypnosisView alloc] initWithFrame:firstFrame];
//    firstView.frame = firstFrame;
    firstView.backgroundColor = [UIColor redColor];
    [self.view addSubview:firstView];
    
    [firstView.frame.origin.y 500];
    

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
