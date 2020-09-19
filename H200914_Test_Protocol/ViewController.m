//
//  ViewController.m
//  H200914_Test_Protocol
//
//  Created by iOS developer on 2020/9/14.
//

#import "ViewController.h"
 
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor lightGrayColor];
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(100, 100, 200, 100)];
    label.text = @"ViewController";
    label.textAlignment = NSTextAlignmentCenter;
    label.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:label];
}
 
@end
