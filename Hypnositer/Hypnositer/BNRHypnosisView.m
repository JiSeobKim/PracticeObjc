//
//  BNRHypnosisView.m
//  Hypnositer
//
//  Created by 김지섭 on 2018. 8. 7..
//  Copyright © 2018년 김지섭. All rights reserved.
//

#import "BNRHypnosisView.h"

@interface BNRHypnosisView ()
@property (strong, nonatomic) UIColor *circleColor;
@end

@implementation BNRHypnosisView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
- (instancetype) initWithFrame:(CGRect)frame
{
    self = [super initWithFrame: frame];
    
    if (self) {
        self.backgroundColor = [UIColor clearColor];
        self.circleColor = [UIColor lightGrayColor];
    }
    
    return self;
}


- (void) touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    NSLog(@"%@ was touched", self);
    
    float red = (arc4random() % 25) / 100;
    float green = (arc4random() % 255) / 100;
    float blue = (arc4random() % 255) / 100;
    
    UIColor *randomColor = [UIColor colorWithRed:red green:green blue:blue alpha:0.7];
    self.circleColor = randomColor;
}


- (void) drawRect:(CGRect)rect
{
    CGRect bounds = self.bounds;
    CGPoint center;
    center.x = bounds.origin.x + bounds.size.width / 2;
    center.y = bounds.origin.y + bounds.size.height / 2;
    
//    float radius = (MIN(bounds.size.height, bounds.size.width) / 2);
    float maxRadius = hypot(bounds.size.width, bounds.size.height) / 2.0;
    
    UIBezierPath *path = [[UIBezierPath alloc] init];
    
//    [path addArcWithCenter:center radius:maxRadius startAngle:0.0 endAngle: M_PI * 2.0  clockwise:YES];
    for (float currentRadius = maxRadius; currentRadius > 0; currentRadius -= 20) {
        [path moveToPoint:CGPointMake(center.x + currentRadius, center.y)];
        
        [path addArcWithCenter:center
                        radius:currentRadius
                    startAngle:0
                      endAngle:M_PI * 2
                     clockwise:YES];
        
    }
    
    [path setLineWidth:10];
    
    [self.circleColor setStroke];
    
    
//    [[UIColor lightGrayColor] setStroke];
    
    UIImage *img = [UIImage imageNamed:@"gitMark"];
    
    [path stroke];
    
    [img drawInRect:CGRectMake(100, 100, 150, 150)];
    
}


- (NSString *) description {
    return @"띠용";
}

- (void) setCircleColor:(UIColor *)circleColor
{
    _circleColor = circleColor;
    [self setNeedsDisplay];
}
@end
