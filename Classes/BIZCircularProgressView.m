//
//  CircularTimerView.m
//  IgorBizi@mail.ru
//
//  Created by IgorBizi@mail.ru on 6/3/15.
//  Copyright (c) 2015 IgorBizi@mail.ru. All rights reserved.
//

#import "BIZCircularProgressView.h"


#define DEGREES(radians) ((radians)*180/M_PI)
#define RADIANS(degree) ((degree)*M_PI/180)


@interface BIZCircularProgressView ()
@property (nonatomic, strong) CAShapeLayer *circlePathLayer;
@end


@implementation BIZCircularProgressView


#pragma mark - Getters/Setters

- (void)setProgressLineColor:(UIColor *)progressLineColor
{
    _progressLineColor = progressLineColor;
    self.circlePathLayer.strokeColor = self.progressLineColor.CGColor;
}

- (void)setCircleBackgroundColor:(UIColor *)circleBackgroundColor
{
    _circleBackgroundColor = circleBackgroundColor;
    self.circlePathLayer.fillColor = self.circleBackgroundColor.CGColor;
}

- (void)setProgressLineWidth:(CGFloat)progressLineWidth
{
    _progressLineWidth = progressLineWidth;
    self.circlePathLayer.lineWidth = self.progressLineWidth;
}


#pragma mark - LifeCycle


- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        [self setup];
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    if (self = [super initWithCoder:aDecoder]) {
        [self setup];
    }
    return self;
}

- (void)setup
{
    //Defaults
    self.progressLineWidth = 2.5;
    self.progressLineColor = [UIColor redColor];
    self.circleBackgroundColor = self.backgroundColor ? self.backgroundColor : [UIColor blueColor];
    
    self.circlePathLayer = [CAShapeLayer layer];
    self.circlePathLayer.frame = self.bounds;
    self.circlePathLayer.lineWidth = self.progressLineWidth;
    self.circlePathLayer.fillColor = self.circleBackgroundColor.CGColor;
    self.circlePathLayer.strokeColor = self.progressLineColor.CGColor;
    [self.layer addSublayer:self.circlePathLayer];
    
    self.backgroundColor = [UIColor clearColor];
    
    // * Start from the top
    self.layer.transform = CATransform3DMakeRotation(RADIANS(-90), 0, 0, 1);
    
    self.textLabel = [[UILabel alloc] initWithFrame:self.frame];
    [self addSubview:self.textLabel];
    self.textLabel.font = [UIFont boldSystemFontOfSize:18];
    self.textLabel.textColor = [UIColor whiteColor];
    self.textLabel.numberOfLines = 1;
    self.textLabel.lineBreakMode = NSLineBreakByClipping;
    self.textLabel.textAlignment = NSTextAlignmentCenter;
    self.textLabel.adjustsFontSizeToFitWidth = YES;
    self.textLabel.layer.transform = CATransform3DMakeRotation(RADIANS(90), 0, 0, 1);
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    
    // Draw path
    self.circlePathLayer.frame = self.textLabel.frame = self.bounds;
    self.circlePathLayer.path = [UIBezierPath bezierPathWithOvalInRect:self.bounds].CGPath;
}


#pragma mark - Events


- (void)setProgress:(CGFloat)progress
{
    if (progress > 1) {
        self.circlePathLayer.strokeEnd = 1;
    } else if (progress <= 0) {
        self.circlePathLayer.strokeEnd = 0;
    } else {
        self.circlePathLayer.strokeEnd = progress;
    }
}

- (void)setText:(NSString *)text
{
    self.textLabel.text = text;
}

@end
