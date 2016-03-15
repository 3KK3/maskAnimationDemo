//
//  ViewController.m
//  第二篇博客文章
//
//  Created by 叶杨 on 16/3/15.
//  Copyright © 2016年 叶景天. All rights reserved.
//

#import "ViewController.h"
#import "OvalTransition.h"
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation ViewController

- (void)viewWillAppear:(BOOL)animated
{
    self.navigationController.delegate = self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
//    self.view.backgroundColor = [UIColor whiteColor];
//    UIBezierPath *maskFinalBP = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(100, 100, 50, 50)];
//    
//    //创建一个 CAShapeLayer 来负责展示圆形遮盖
//    CAShapeLayer *maskLayer = [CAShapeLayer layer];
//    maskLayer.path = maskFinalBP.CGPath;
//    self.imageView.layer.mask = maskLayer;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark --UINavigationControllerDelegate
- (id<UIViewControllerAnimatedTransitioning>)navigationController:(UINavigationController *)navigationController animationControllerForOperation:(UINavigationControllerOperation)operation fromViewController:(UIViewController *)fromVC toViewController:(UIViewController *)toVC
{
    if (operation == UINavigationControllerOperationPush) {
        
        OvalTransition *ovalTransi = [OvalTransition new];
        return ovalTransi;
    }else{
        return nil;
    }

}

@end
