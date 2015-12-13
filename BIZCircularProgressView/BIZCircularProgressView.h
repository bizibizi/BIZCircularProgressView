//
//  CircularProgressView.h
//  IgorBizi@mail.ru
//
//  Created by IgorBizi@mail.ru on 6/3/15.
//  Copyright (c) 2015 IgorBizi@mail.ru. All rights reserved.
//

#import <UIKit/UIKit.h>


// * Class defines progressive circle border
@interface BIZCircularProgressView : UIView
@property (nonatomic) CGFloat progress; // From 0 to 1
@property (nonatomic, copy) NSString *text;

//Customization
@property (nonatomic) CGFloat progressLineWidth;
@property (nonatomic) UIColor *progressLineColor;
@property (nonatomic) UIColor *circleBackgroundColor;
@property (nonatomic, strong) UILabel *textLabel;

@end
