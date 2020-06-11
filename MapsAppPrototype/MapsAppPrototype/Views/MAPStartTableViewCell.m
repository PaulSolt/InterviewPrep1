//
//  MAPStartTableViewCell.m
//  MapsAppPrototype
//
//  Created by Audrey Welch on 6/11/20.
//  Copyright © 2020 Lambda, Inc. All rights reserved.
//

#import "MAPStartTableViewCell.h"

// Class Extension
@interface MAPStartTableViewCell ()

// Private IBOutlets
@property IBOutlet UILabel *startLabel;
@property IBOutlet UIImageView *startIconImageView;

@end

// Implementation
@implementation MAPStartTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
