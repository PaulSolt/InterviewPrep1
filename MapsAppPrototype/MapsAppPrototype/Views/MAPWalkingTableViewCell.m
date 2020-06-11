//
//  WalkingCell.m
//  MapsAppPrototype
//
//  Created by Paul Solt on 6/10/20.
//  Copyright © 2020 Lambda, Inc. All rights reserved.
//

#import "MAPWalkingTableViewCell.h"

// Class Extension
@interface MAPWalkingTableViewCell ()

// Private IBOutlets
@property IBOutlet UILabel *walkTitleLabel;
@property IBOutlet UILabel *walkDetailLabel;
@property IBOutlet UIImageView *walkIconImageView;

@end


@implementation MAPWalkingTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
