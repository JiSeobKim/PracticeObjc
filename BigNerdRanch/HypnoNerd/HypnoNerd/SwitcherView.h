//
//  SwitcherView.h
//  HypnoNerd
//
//  Created by kimjiseob on 2018. 9. 5..
//  Copyright © 2018년 김지섭. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SwitcherView : UIView
@property (weak, nonatomic) IBOutlet UILabel *lbTitle;
@property (weak, nonatomic) IBOutlet UISegmentedControl *sgBtn;
@property (strong, nonatomic) IBOutlet UIView *mainView;

- (IBAction)changeLabel:(id)sender;

@end
