//
//  DoryzProgressView.m
//  Quartz2D
//
//  Created by Dory on 2016/10/25.
//  Copyright © 2016年 www.visualogies.com. All rights reserved.
//

/**
 *  自定义progressView,自带显示进度的label
 */

#import "DoryzProgressView.h"
@interface DoryzProgressView ()
{
    UILabel *_progressLabel;
}
@end
@implementation DoryzProgressView

- (instancetype)initWithFrame:(CGRect)frame {
    if (self=[super initWithFrame:frame]) {
        UILabel *label = [[UILabel alloc]init];
//        label.text = [NSString stringWithFormat:@"%.1f%%",_progressValue];
        label.textAlignment = NSTextAlignmentCenter;
        label.frame = CGRectMake(self.center.x, self.center.y, 1, 1);
        _progressLabel = label;
//        [self addSubview:label];
    }
    return self;
}

- (void)setProgressValue:(CGFloat)progressValue {
    _progressValue = progressValue;
//    _progressLabel.text = [NSString stringWithFormat:@"%.1f%%",progressValue*100];
    [self setNeedsDisplay];
}
- (void)drawRect:(CGRect)rect {
    
    //结束角度如果是M_PI *2 就是一个圆
//       1           _pregressValue
//    --------   = -----------------
//     M_PI*2              x
    
    CGFloat endAngle = self.progressValue * M_PI*2 - M_PI/2;
    UIBezierPath *path1 = [UIBezierPath bezierPathWithArcCenter:self.center radius:80 startAngle:0-M_PI/2 endAngle:endAngle clockwise:YES];
    [[UIColor purpleColor] set];
//    path1.lineWidth = 20;
//    path1.lineCapStyle = kCGLineCapSquare;
    [path1 stroke];
    
    
    NSString *string = [NSString stringWithFormat:@"%.1f%%",self.progressValue*100];
    UIFont *font = [UIFont systemFontOfSize:16];
    NSMutableParagraphStyle *paragraphStyle = [[NSParagraphStyle defaultParagraphStyle] mutableCopy];
    paragraphStyle.lineBreakMode = NSLineBreakByTruncatingMiddle;
    paragraphStyle.alignment = NSTextAlignmentCenter;
    NSDictionary *dic = @{NSFontAttributeName:font,NSParagraphStyleAttributeName:paragraphStyle};
    [string drawInRect:CGRectMake(self.center.x-30, self.center.y-15, 60, 40) withAttributes:dic];
    
    
}

@end
