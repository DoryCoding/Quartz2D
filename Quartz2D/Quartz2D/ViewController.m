//
//  ViewController.m
//  Quartz2D
//
//  Created by Dory on 2016/10/25.
//  Copyright © 2016年 www.visualogies.com. All rights reserved.
//
/*
 *  相关文章链接：
 *  http://www.jianshu.com/p/0e785269dccc
 *  http://www.jianshu.com/p/f9f05e12ddd3
 */


#import "ViewController.h"
#import "DoryUIView.h"
#import "DoryzProgressView.h"
#import "DoryProgressView2.h"
@interface ViewController ()
{
    DoryzProgressView *_progressView;
    DoryProgressView2 *_progressView2;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UISlider *slider = [[UISlider alloc]initWithFrame:CGRectMake(10, 300, 350, 20)];
    slider.maximumValue = 1.0;
    slider.minimumValue = 0.0;
    [slider addTarget:self action:@selector(_valueChanged:) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:slider];
    
    
    DoryUIView *view = [[DoryUIView alloc]initWithFrame:self.view.frame];
    view.backgroundColor = [UIColor whiteColor];
//    [self.view addSubview:view];
    
    
    _progressView = [[DoryzProgressView alloc]initWithFrame:CGRectMake(0, 0, 375, 300)];
    _progressView.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:_progressView];
    
    _progressView2 = [[DoryProgressView2 alloc]initWithFrame:CGRectMake(0, 350, 375, 300)];
    _progressView2.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:_progressView2];
    
    
}
- (void)_valueChanged:(UISlider *)slider {
    _progressView.progressValue = slider.value;
    _progressView2.progressValue = slider.value;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
