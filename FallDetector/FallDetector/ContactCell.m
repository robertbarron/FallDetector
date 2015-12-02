//
//  ContactCell.m
//  FallDetector
//
//  Created by Muhammad Hamiz Ahmed on 12/1/15.
//  Copyright © 2015 mohsin. All rights reserved.
//

#import "ContactCell.h"

@implementation ContactCell

-(id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if(self){
        UINib *nib = [UINib nibWithNibName:@"ContactCell" bundle:nil];
        NSArray *array = [nib instantiateWithOwner:nil options:nil];
        self = [array lastObject];
        self.selectionStyle = UITableViewCellEditingStyleNone;
    }
    return self;
}

- (void)awakeFromNib {
    // Initialization code
    [self setCircleViewCornerRadius];
}

-(void)setNameLabelText:(NSString*)name{
    [self.nameLabel setText:name];
}

-(void)setCircleViewCornerRadius{
    self.contactCircleView.layer.cornerRadius=self.contactCircleView.frame.size.width/2;
    [self.contactCircleView.layer setMasksToBounds:YES];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
