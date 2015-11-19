//
//  MatchList.m
//  CricketInfo
//
//  Created by Muhammad Hamiz Ahmed on 11/5/15.
//  Copyright © 2015 mohsin. All rights reserved.
//

#import "MatchListView.h"
#import "Color.h"
@implementation MatchListView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

-(void)awakeFromNib{
    [self createCircularTimerLabel];

}

-(void)createCircularTimerLabel{
    self.pLabel.backgroundColor = [UIColor clearColor];
    
    __unsafe_unretained MatchListView * weakSelf = self;
    self.pLabel.labelVCBlock = ^(KAProgressLabel *label) {
        weakSelf.pLabel.startLabel.text = [NSString stringWithFormat:@"%.f",weakSelf.pLabel.startDegree];
        weakSelf.pLabel.endLabel.text = [NSString stringWithFormat:@"%.f",weakSelf.pLabel.endDegree];
        
        float delta =label.endDegree-label.startDegree;
        if( delta<0){
            [label setText:[NSString stringWithFormat:@"%.0f%%",(delta+360)/3.6]];
        }else{
            [label setText:[NSString stringWithFormat:@"%.0f%%",(delta)/3.6]];
        }
       // weakSelf.startSlider.value = label.startDegree;
       // weakSelf.endSlider.value = label.endDegree;
    };
    
    [self.pLabel setTrackWidth: 28];
    [self.pLabel setProgressWidth: 28.2];
    self.pLabel.fillColor = [Color greyBackgroundColor];
    self.pLabel.trackColor = [Color orangeThemeColor];
    self.pLabel.progressColor = [Color greyThemeColor];
    self.pLabel.isStartDegreeUserInteractive = YES;
    self.pLabel.isEndDegreeUserInteractive = YES;
    
    // Inits
  /*  [self startSliderValueChanged:self.startSlider];
    [self endSliderValueChanged:self.endSlider];
    [self backBorderSliderValueChanged:self.backBorderSlider];
    [self frontBorderSliderValueChanged:self.frontBorderSlider];
    [self progressSliderValueChanged:self.progressSlider];
    [self roundedCornersSliderValueChanged:self.roundedCornersSlider];*/

}

@end
