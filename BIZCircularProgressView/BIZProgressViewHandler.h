//
//  ProgressDataManager.h
//  IgorBizi@mail.ru
//
//  Created by IgorBizi@mail.ru on 10/27/15.
//  Copyright © 2015 IgorBizi@mail.ru. All rights reserved.
//

#import <UIKit/UIKit.h>
@class BIZCircularProgressView, BIZProgressViewHandler;


@protocol ProgressViewHandlerDelegate <NSObject>
@optional
- (void)progressViewHandler:(BIZProgressViewHandler *)progressViewHandler didFinishProgressForProgressView:(BIZCircularProgressView *)progressView;
- (void)progressViewHandler:(BIZProgressViewHandler *)progressViewHandler currentProgress:(CGFloat)pregress withProgressView:(BIZCircularProgressView *)progressView;
@end


@interface BIZProgressViewHandler : NSObject
- (instancetype)initWithProgressView:(BIZCircularProgressView *)progressView minValue:(CGFloat)min maxValue:(CGFloat)max;
@property (nonatomic, weak) id <ProgressViewHandlerDelegate> delegate;
@property (nonatomic) BOOL liveProgress;
- (void)start;
- (void)stop;

@end
