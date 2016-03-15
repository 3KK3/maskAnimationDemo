//
//  SecondViewController.m
//  第二篇博客文章
//
//  Created by 叶杨 on 16/3/15.
//  Copyright © 2016年 叶景天. All rights reserved.
//

#import "SecondViewController.h"
#import "OvalInvertTransition.h"
@interface SecondViewController ()

@end

@implementation SecondViewController
- (IBAction)popClick:(UIButton *)sender {
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)viewWillAppear:(BOOL)animated
{
    self.navigationController.delegate = self;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

#pragma mark --UINavigationControllerDelegate
- (id <UIViewControllerAnimatedTransitioning>)navigationController:(UINavigationController *)navigationController
                                   animationControllerForOperation:(UINavigationControllerOperation)operation
                                                fromViewController:(UIViewController *)fromVC
                                                  toViewController:(UIViewController *)toVC{
    
    
    
    if (operation == UINavigationControllerOperationPop) {
        OvalInvertTransition *ovalInvert = [OvalInvertTransition new];
        return ovalInvert;
    }else{
        return nil;
    }
}

@end
