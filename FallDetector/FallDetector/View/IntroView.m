//
//  IntroView.m
//  FallDetector
//
//  Created by Muhammad Hamiz Ahmed on 11/18/15.
//  Copyright © 2015 mohsin. All rights reserved.
//

#import "IntroView.h"
#import "IntroController.h"
#import "Color.h"
@implementation IntroView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
- (IBAction)CreateAccountButtonClick:(id)sender {
    [(IntroController*)self.controller openCreateAccountController];
}

-(void)awakeFromNib{
    [self setFallCeptionLabelAttributes];
    
}

- (IBAction)signInButtonClick:(id)sender {
    [(IntroController*)self.controller showLoginController];
    //[(IntroController*)self.controller showMonitoringController];
}

-(void)setFallCeptionLabelAttributes{
    NSString *text = @"Sign in to FALLCEPTION";
    NSMutableAttributedString *attributedText =
    [[NSMutableAttributedString alloc] initWithString:text
                                           attributes:nil];
    //UIColor *redColor = [UIColor colorWithRed:249/255.0f green:146/255.0f blue:10/255.0f alpha:1.0f];
    NSRange orangeTextRange = [text rangeOfString:@"CEPTION"];
    [attributedText setAttributes:@{NSForegroundColorAttributeName:[Color orangeThemeColor],
                                    NSFontAttributeName:[UIFont 
                                                         fontWithName:@"Helvetica-Bold" size:25]}
                            range:orangeTextRange];
    [self.fallCeptionLabel setAttributedText:attributedText];
    
}


@end
