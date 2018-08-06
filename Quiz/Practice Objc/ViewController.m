//
//  ViewController.m
//  Practice Objc
//
//  Created by 김지섭 on 2018. 8. 6..
//  Copyright © 2018년 김지섭. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *lbQuizArea;
@property (weak, nonatomic) IBOutlet UILabel *lbAnswerArea;

@property (nonatomic) int currentQuestionindex;
@property (nonatomic) NSArray *questions;
@property (nonatomic) NSArray *answer;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.questions = @[@"From what is cognac mad?",@"What is 7+7?",@"What is the capital of Vermont"];
    self.answer = @[@"Grapes",@"14",@"Montpelier"];

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)showQuestion:(id)sender {
    self.currentQuestionindex ++;
    
    if (self.currentQuestionindex == self.questions.count) {
        self.currentQuestionindex = 0;
    }
    
    NSString *question = self.questions[self.currentQuestionindex];
    
    
    self.lbQuizArea.text = question;
    
    self.lbAnswerArea.text = @"???";
    
}

- (IBAction)showAnswer:(id)sender {
    
    self.lbAnswerArea.text = self.answer[self.currentQuestionindex];
    
}

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    if (self) {
        self.questions = @[@"From what is cognac mad?",@"What is 7+7?",@"What is the capital of Vermont"];
        self.answer = @[@"Grapes",@"14",@"Montpelier"];
        
    }
    return self;
}

@end
