//
//  WalkingCell.m
//  MapsAppPrototype
//
//  Created by Paul Solt on 6/10/20.
//  Copyright © 2020 Lambda, Inc. All rights reserved.
//

#import "WalkingCell.h"

// Class Extension

@interface WalkingCell ()

// Private IBOutlet
@property IBOutlet UILabel *label;


@end


@implementation WalkingCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
