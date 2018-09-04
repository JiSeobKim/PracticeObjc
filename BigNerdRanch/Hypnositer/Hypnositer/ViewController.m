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
    
    
    
    CGRect screenRect = self.view.bounds;
    CGRect bigRect = screenRect;
    bigRect.size.width *= 2.0;
    
    
    
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:screenRect];
    [self.view addSubview:scrollView];
    
    BNRHypnosisView *hyponosisView = [[BNRHypnosisView alloc] initWithFrame:screenRect];
    [scrollView addSubview:hyponosisView];
    
    screenRect.origin.x += screenRect.size.width;
    BNRHypnosisView *hyponosisView2 = [[BNRHypnosisView alloc] initWithFrame:screenRect];
    [scrollView addSubview:hyponosisView2];
    
    scrollView.contentSize = bigRect.size;
    scrollView.pagingEnabled = YES;
    

    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
