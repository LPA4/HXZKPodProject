//
//  BaseViewController.m
//  SFDANewVerison
//
//  Created by kunyuan liu on 2019/4/12.
//  Copyright © 2019 kunyuan liu. All rights reserved.
//

#import "BaseViewController.h"

@interface BaseViewController ()
@property (nonatomic, strong)UIButton * buttonLeft;

@end

@implementation BaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.view.multipleTouchEnabled = NO;
}

/**
 状态栏风格
 
 @return 返回LightStyle
 */
- (UIStatusBarStyle)preferredStatusBarStyle{
    return UIStatusBarStyleLightContent;
}

#pragma mark - lifeCycle Method
- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    [self.view setBackgroundColor:[UIColor whiteColor]];
    
    UIBarButtonItem * leftItem = [[UIBarButtonItem alloc]initWithCustomView:self.buttonLeft];
    [self.navigationItem setLeftBarButtonItem:leftItem];
    
    if (self.pageTagNMPA == 0) {
        self.navigationController.navigationBarHidden = YES;
    }
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    
}


/**
 控制器返回方法
 
 @param button 返回按钮
 */
- (void)HXZKBaseVCLeftAction:(UIButton *)button {
    [self.navigationController popViewControllerAnimated:YES];
}

#pragma mark - Getting Method
- (UIButton *)buttonLeft {
    if ( !_buttonLeft) {
        _buttonLeft = [UIButton buttonWithType:UIButtonTypeCustom];
        [_buttonLeft setFrame:CGRectMake(0, 0, 30, 30)];
        [_buttonLeft addTarget:self action:@selector(HXZKBaseVCLeftAction:) forControlEvents:UIControlEventTouchUpInside];
        [_buttonLeft setImage:[UIImage imageNamed:@"leftBack"] forState:UIControlStateNormal];
    }
    return _buttonLeft;
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self.view endEditing:YES];
}

- (void)dealloc
{
    NSLog(@"\n 控制器 : %@ 已经被释放  \n ",NSStringFromClass([self class]));
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
