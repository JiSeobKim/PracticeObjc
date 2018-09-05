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
    
    CGRect textFieldRect = CGRectMake(40, 70, 240, 30);
    UITextField *textField = [[UITextField alloc] initWithFrame: textFieldRect];
    textField.placeholder = @"안녕하신가요?";
    textField.borderStyle = UITextBorderStyleRoundedRect;
    textField.autocapitalizationType = UITextAutocapitalizationTypeAllCharacters;
    textField.delegate = self;
    [self.view addSubview:textField];
    
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    NSLog(@"%@", textField.text);
    return YES;
}


- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    if (self) {
        self.tabBarItem.title = @"Hypnotize";
        UIImage *img = [UIImage imageNamed:@"Hypno"];
        self.tabBarItem.image = img;
        
    }
    
    return self;
}



@end
