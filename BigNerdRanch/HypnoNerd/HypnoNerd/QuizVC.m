//
//  ViewController.m
//  Practice Objc
//
//  Created by 김지섭 on 2018. 8. 6..
//  Copyright © 2018년 김지섭. All rights reserved.
//

#import "QuizVC.h"
#import "SwitcherView.h"

@interface QuizVC ()
@property (weak, nonatomic) IBOutlet UILabel *lbQuizArea;
@property (weak, nonatomic) IBOutlet UILabel *lbAnswerArea;

@property (nonatomic) int currentQuestionindex;
@property (nonatomic) NSArray *questions;
@property (nonatomic) NSArray *answer;
@end

@implementation QuizVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.questions = @[@"From what is cognac mad?",@"What is 7+7?",@"What is the capital of Vermont"];
    self.answer = @[@"Grapes",@"14",@"Montpelier"];
    
    self.lbQuizArea.text = self.questions[0];
    self.lbAnswerArea.text = @"???";
    NSLog(@"%d", self.currentQuestionindex);
    
    
    SwitcherView *segView = [[SwitcherView alloc] initWithFrame:CGRectMake(20, 20, 50, 40)];
    [segView setUserInteractionEnabled:YES];
    [self.view addSubview:segView];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
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
        self.tabBarItem.title = @"Quiz";
    }
    return self;
}



@end
