//
//  DoryProgressView2.m
//  Quartz2D
//
//  Created by Dory on 2016/10/25.
//  Copyright © 2016年 www.visualogies.com. All rights reserved.
//

#import "DoryProgressView2.h"

@implementation DoryProgressView2

- (void)setProgressValue:(CGFloat)progressValue {
    _progressValue = progressValue;
    [self setNeedsDisplay];
}



- (void)drawRect:(CGRect)rect {
    // Drawing code
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    [[UIColor cyanColor] set];
    //绘制曲线
    CGFloat centerX = self.center.x;
    CGFloat centerY = 100;
    CGFloat radius = 80;
    //添加一根线·
    CGContextMoveToPoint(ctx, centerX, centerY);
    CGFloat endAngle = self.progressValue*M_PI*2-M_PI/2;
    CGContextAddArc(ctx, centerX, centerY, radius, -M_PI/2, endAngle, NO);
    //关闭线段
    CGContextClosePath(ctx);
    //渲染
    CGContextFillPath(ctx);
    
    UIFont  *font = [UIFont boldSystemFontOfSize:15.0];//设置  
    [@"扇形" drawInRect:CGRectMake(10, 160, 110, 20) withFont:font lineBreakMode:NSLineBreakByTruncatingTail alignment:NSTextAlignmentCenter];
}


@end
