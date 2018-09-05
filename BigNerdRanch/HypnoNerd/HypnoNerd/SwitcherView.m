//
//  SwitcherView.m
//  HypnoNerd
//
//  Created by kimjiseob on 2018. 9. 5..
//  Copyright © 2018년 김지섭. All rights reserved.
//

#import "SwitcherView.h"

@interface SwitcherView ()
@end

@implementation SwitcherView

- (instancetype)initWithCoder:(NSCoder *)aDecoder{
    self = [super initWithCoder:aDecoder];
    
    if (self) {
        self.lbTitle.text = @"눌러주세요 >>";
        [NSBundle.mainBundle loadNibNamed:@"SwitcherView" owner:self options:nil];
        [self addSubview: self.mainView];
    }
    return self;
}


- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        self.lbTitle.text = @"눌러주세요 >>";
        [NSBundle.mainBundle loadNibNamed:@"SwitcherView" owner:self options:nil];
        self.mainView.frame = frame;
        [self addSubview: self.mainView];
    }
    return self;
}



- (IBAction)changeLabel:(id)sender {
    switch ([sender selectedSegmentIndex]) {
    case 0:
            self.lbTitle.text = @"1st";
        break;
    case 1:
            self.lbTitle.text = @"2st";
        break;
        default:
            break;
    }
}
@end
