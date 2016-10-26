//
//  DoryUIView.m
//  Quartz2D
//
//  Created by Dory on 2016/10/25.
//  Copyright © 2016年 www.visualogies.com. All rights reserved.
//

#import "DoryUIView.h"

@implementation DoryUIView


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    
//    //画线
//    //2.描述路径
//    //2.1 创建路径
//    CGContextMoveToPoint(ctx, 14, 19);
//    //2.2 添加线到一个点
//    CGContextAddLineToPoint(ctx, 100, 100);
//    //3.完成路线
//    CGContextStrokePath(ctx);
    
    
//    //2.使用path来画线
//    CGMutablePathRef path = CGPathCreateMutable();
//    //3.添加点
//    CGPathMoveToPoint(path, NULL, 34, 23);
//    CGPathAddLineToPoint(path, NULL, 100, 100);
//    //4.将path添加到图像上下文上
//    CGContextAddPath(ctx, path);
//    //5.渲染上下文
//    CGContextStrokePath(ctx);
    
    
//    //2.将绘制路径，并且将其添加到图形上下文
//    CGContextMoveToPoint(ctx,123, 45);
//    CGContextAddLineToPoint(ctx, 45, 80);
//    
//    //添加另一根线
//    CGContextAddLineToPoint(ctx, 223, 159);
//    
//    //设置颜色
//    [[UIColor greenColor] set];
//    //设置线的宽度
//    CGContextSetLineWidth(ctx, 10);
//    //设置链接处的链接类型
//    CGContextSetLineJoin(ctx, kCGLineJoinBevel);
//    //设置线的头部样式
//    CGContextSetLineCap(ctx, kCGLineCapRound);
//    //渲染
//    CGContextStrokePath(ctx);
    
    
//    //贝塞尔曲线画图
//    UIBezierPath *path = [UIBezierPath bezierPath];
//    [path moveToPoint:CGPointMake(12, 49)];
//    [path addLineToPoint:CGPointMake(68, 34)];
//    [path setLineWidth:3];
//    [[UIColor redColor] set];
//    [path stroke];
//    //设置第2个线段
//    UIBezierPath *path2 = [UIBezierPath bezierPath];
//    [path2 moveToPoint:CGPointMake(145, 167)];
//    [path2 addLineToPoint:CGPointMake(98, 34)];
//    [path2 setLineWidth:10];
//    [[UIColor greenColor] set];
//    [path2 setLineCapStyle:kCGLineCapRound];
//    [path2 stroke];
    
    
//    //绘制曲线
//    //设置起点
//    CGContextMoveToPoint(ctx, 10, 10);
//    /**
//     *  添加曲线的五个参数
//     *
//     *  @param c#>   图形上下文
//     *  @param cpx#> 将来要突出的x值
//     *  @param cpy#> 要突出的y值
//     *  @param x#>   曲线结束时的x
//     *  @param y#>   曲线结束时的y
//     */
//    CGContextAddQuadCurveToPoint(ctx, 150, 150, 100, 10);
//    //设置颜色
//    [[UIColor redColor] set];
//    //渲染图层
//    CGContextStrokePath(ctx);
    
    
    
//    //绘制带有圆角边框的正方形
//    //绘制一个圆角矩形
//    UIBezierPath *path = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(10, 10, 100, 40) cornerRadius:5];
//    [[UIColor orangeColor] set];
//    [path stroke];
//    
//    //绘制一个圆角矩形
//    UIBezierPath *path2 = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(10, 110, 100, 40) cornerRadius:5];
//    [[UIColor greenColor] set];
//    [path2 fill];
//    
//    //绘制一个圆形（不规范的绘制）
//    UIBezierPath *path3 = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(140, 10, 100, 100) cornerRadius:50];
//    [[UIColor cyanColor] set];
//    [path3 fill];
    
    
//    //绘制弧度曲线
//    /**
//     *  绘制弧度曲线
//     *
//     *  ArcCenter 曲线中心
//     *  radius       半径
//     *  startAngle 开始的弧度
//     *  endAngle 接收的弧度
//     *  clockwise YES顺时针，NO逆时针
//     */
//    UIBezierPath *path = [UIBezierPath bezierPathWithArcCenter:CGPointMake(100, 100) radius:14 startAngle:0 endAngle:M_PI clockwise:YES];
//    [[UIColor greenColor] set];
//    [path stroke];
//    
//    //结束角度如果是M_PI *2 就是一个圆
//    UIBezierPath *path1 = [UIBezierPath bezierPathWithArcCenter:CGPointMake(240, 140) radius:40 startAngle:0 endAngle:M_PI * 2 clockwise:YES];
//    [[UIColor purpleColor] set];
//    [path1 fill];
//
//    //绘制115度角的圆弧
//    UIBezierPath *path2 = [UIBezierPath bezierPathWithArcCenter:CGPointMake(200, 100) radius:20 startAngle:0 endAngle:115/360.0*(M_PI *2) clockwise:NO];
//    [[UIColor orangeColor] set];
//    [path2 stroke];
    
    
//    //绘制曲线
//    CGFloat centerX = 100;
//    CGFloat centerY = 100;
//    CGFloat radius = 30;
//    //添加一根线·
//    CGContextMoveToPoint(ctx, centerX, centerY);
//    CGContextAddArc(ctx, centerX, centerY, radius, M_PI, M_PI_2, NO);
//    //关闭线段
//    CGContextClosePath(ctx);
//    //渲染
//    CGContextStrokePath(ctx);
    

    
//    [[[UIColor blackColor] colorWithAlphaComponent:0.5] setFill];
//    
//    CGMutablePathRef screenPath = CGPathCreateMutable();
//    CGPathAddRect(screenPath, NULL, self.bounds);
//    
//    CGMutablePathRef scanPath = CGPathCreateMutable();
//    CGPathAddRect(scanPath, NULL, CGRectMake((self.frame.size.width-200)/2, (self.frame.size.height-200)/2, 200, 200));
//    
//    //类似于抠图
//    CGMutablePathRef path = CGPathCreateMutable();
//    CGPathAddPath(path, NULL, screenPath);
//    CGPathAddPath(path, NULL, scanPath);
//    
//    CGContextAddPath(ctx, path);
//    CGContextDrawPath(ctx, kCGPathEOFill);
//    
//    CGPathRelease(screenPath);
//    CGPathRelease(scanPath);
//    CGPathRelease(path);
    
    
    
    
    
}


@end
