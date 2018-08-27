//
//  ViewController.m
//  objcMemCoo
//
//  Created by 김지섭 on 2018. 8. 27..
//  Copyright © 2018년 김지섭. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *tfHPInfo;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    
    
}

- (void)postData {
    NSString *token = @"eyJhbGciOiJIUzI1NiJ9.eyJ1aWQiOjIwMSwidXNlck5tIjoi6rmA7KeA7IStIiwibG9naW5JZCI6IjAxMDAxMDEwMjAyIiwidXNlclR5cGUiOiIwMDAwNCIsInVzZXJMdmwiOjEsImluc3R0Tm0iOiJUb2RheSBGb29kIiwiaW5zdHRObyI6MCwibW5nX2NvcnBfbm8iOiIxIiwiYXBwX3R5cGVfY29kZSI6IjAwMDAyIiwiaXNzIjoiZm9vZCIsImV4cCI6MjUzMzkxMzQwNDQ2fQ.yuCtL3qxmRLuorrylfPnTWdo0wByh_MYmTlhI-Zkgaw";
    
    NSString *hp = [_tfHPInfo text];
    NSString *address = [NSString stringWithFormat:@"https://api-dev.isiksa.com/v1/user/hp/%@", hp];
    
    NSURL *URL = [NSURL URLWithString:address];
    
    NSMutableURLRequest *request = [[NSMutableURLRequest alloc] init];
    
    [request setURL:URL];
    [request setHTTPMethod:@"GET"];
    [request setValue: token  forHTTPHeaderField:@"foodOauth"];
    
    [[[NSURLSession sharedSession] dataTaskWithRequest:request completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        
        id json = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
        
        id text = [json objectForKey:@"message"];

        id dataObj = [json objectForKey:@"data"];
        
        if (dataObj != nil) {
            id list = [dataObj objectForKey:@"list"];
            
            NSArray *array = [list allObjects];
            
            NSLog(@"%@", array.firstObject);
            
            id ttt = [array.firstObject objectForKey: @"crtfdNo"];
            
            
            
            dispatch_sync(dispatch_get_main_queue(), ^{
                self.lbResult.text = ttt;
                
            
                
                [self->_lbResult sizeToFit];
                [self->_lbResult setCenter:self.view.center];
            });
        
            

        } else {
            NSLog(@"ddddd");
        }
        
//
//        dispatch_async(dispatch_get_main_queue(), ^{
//            self.lbResult.text = text;
//            [self.lbResult sizeToFit];
//
//
//
//            CGPoint point = CGPointMake(self.view.frame.size.width / 2, self.lbResult.center.y);
//
//            [self->_lbResult setCenter:point];
//
//
//
//
//
//
//
//        });
//
    }] resume];
    
    
    
    

}




- (IBAction)postIt:(id)sender {
    [self postData];
}




@end
