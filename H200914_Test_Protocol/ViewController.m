//
//  ViewController.m
//  H200914_Test_Protocol
//
//  Created by iOS developer on 2020/9/14.
//

#import "ViewController.h" 
@import LineSDK;

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor lightGrayColor];
    
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(100, 100, 200, 100)];
    [btn setTitle:@"Line Login" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(buttonOnClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}
 
- (void)buttonOnClick
{
    NSSet *permissions = [NSSet setWithObjects:
                              [LineSDKLoginPermission profile],
                              [LineSDKLoginPermission openID],
                              nil];
    [[LineSDKLoginManager sharedManager]
        loginWithPermissions:permissions
            inViewController:self
                  parameters:nil
           completionHandler:^(LineSDKLoginResult *result, NSError *error) {
               if (result) {
                   NSLog(@"User Name: %@", result.userProfile.displayName);
               } else {
                   NSLog(@"Error: %@", error);
               }
           }
     ];
}

@end
