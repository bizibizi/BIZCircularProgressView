# BIZCircularProgressView

*Wait for gif presentation, it's loading...*

![alt tag](https://github.com/bizibizi/BIZCircularProgressView/blob/master/presentation.gif)


BIZCircularProgressView is a subclass of UIView that adds round progress view with timer.


# Installation

### Manually
 - Copy BIZCircularProgressView folder to your project 
 - ```#import "BIZCircularProgressView.h"``` 


# Usage

- Create and setup ```BIZCircularProgressView``` and ```BIZProgressViewHandler```
```objective-c
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //Create with Code
    self.circularProgressViewForCode = [[BIZCircularProgressView alloc] initWithFrame:CGRectMake(100, 100, 150, 150)];
    [self.view addSubview:self.circularProgressViewForCode];
    //Customize
    self.circularProgressViewForCode.progressLineColor = [UIColor blackColor];
    self.circularProgressViewForCode.circleBackgroundColor = [UIColor yellowColor];
    self.circularProgressViewForCode.progressLineWidth = 5;
    self.circularProgressViewForCode.textLabel.textColor = [UIColor blackColor];
    self.circularProgressViewForCode.textLabel.font = [UIFont boldSystemFontOfSize:25];
    self.progressViewHandlerForCode = [[BIZProgressViewHandler alloc] initWithProgressView:self.circularProgressViewForCode minValue:0 maxValue:5];
    
    //Create with Storyboard
    //Customize
    self.circularProgressViewForStoryboard.progressLineWidth = 16;
    self.circularProgressViewForStoryboard.textLabel.font = [UIFont boldSystemFontOfSize:25];
    self.progressViewHandlerForStoryboard = [[BIZProgressViewHandler alloc] initWithProgressView:self.circularProgressViewForStoryboard minValue:0 maxValue:8];
    self.progressViewHandlerForStoryboard.liveProgress = YES;
    self.progressViewHandlerForStoryboard.delegate = self;
}
```

- Run timer
```objective-c
- (IBAction)runButtonAction:(UIButton *)sender
{
    [self.progressViewHandlerForCode start];
}
```


# Contact

Igor Bizi
- https://www.linkedin.com/in/igorbizi
- igorbizi@mail.ru


# License
 
The MIT License (MIT)

Copyright (c) 2015-present Igor Bizi

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 
