//
//  MAPProgrammaticTableViewCell.m
//  MapsAppPrototype
//
//  Created by Audrey Welch on 6/14/20.
//  Copyright © 2020 Lambda, Inc. All rights reserved.
//

#import "MAPProgrammaticTableViewCell.h"

@interface MAPProgrammaticTableViewCell ()

@property (nonatomic) UILabel *transitTitleLabel;
@property (nonatomic) UILabel *transitDetailLabel;
@property (nonatomic) UIImageView *transitIconImageView;
@property (nonatomic) UILabel *transitTimesLabel;
@property (nonatomic) UILabel *transitOnTimeLabel;

@end

@implementation MAPProgrammaticTableViewCell

- (UILabel *)transitTitleLabel {
    if (!_transitTitleLabel) {
        UILabel *label = [[UILabel alloc] initWithFrame:CGRectZero];
        label.text = @"Take the NJ Transit 89 or 126 bus";
        label.font = [UIFont preferredFontForTextStyle:UIFontTextStyleHeadline];
        label.numberOfLines = 0;
        
        [label setContentCompressionResistancePriority:751 forAxis:UILayoutConstraintAxisVertical];
        
        _transitTitleLabel = label;
    }
    
    return _transitTitleLabel;
}

- (UILabel *)transitDetailLabel {
    if (!_transitDetailLabel) {
        UILabel *label = [[UILabel alloc] initWithFrame:CGRectZero];
        label.text = @"Toward Hoboken Terminal or Hoboken-Path";
        label.font = [UIFont preferredFontForTextStyle:UIFontTextStyleSubheadline];
        label.textColor = [UIColor secondaryLabelColor];
        label.numberOfLines = 0;
        
        [label setContentCompressionResistancePriority:750 forAxis:UILayoutConstraintAxisVertical];
        
        _transitDetailLabel = label;
    }
    return _transitDetailLabel;
}

- (UIImageView *)transitIconImageView {
    if (!_transitIconImageView) {
        UIImageView *imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"nj-transit"]];
        imageView.contentMode = UIViewContentModeScaleAspectFit;
        
        _transitIconImageView = imageView;
    }
    
    return _transitIconImageView;
}

- (UILabel *)transitTimesLabel {
    if (!_transitTimesLabel) {
        UILabel *label = [[UILabel alloc] initWithFrame:CGRectZero];
        label.text = @"4, 6 min";
        label.font = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
        label.numberOfLines = 1;
        label.textAlignment = NSTextAlignmentRight;
        
        _transitTimesLabel = label;
    }
    
    return _transitTimesLabel;
}

- (UILabel *)transitOnTimeLabel {
    if (!_transitOnTimeLabel) {
        UILabel *label = [[UILabel alloc] initWithFrame:CGRectZero];
        label.text = @"Scheduled";
        label.font = [UIFont preferredFontForTextStyle:UIFontTextStyleFootnote];
        label.textColor = [UIColor secondaryLabelColor];
        label.numberOfLines = 1;
        label.textAlignment = NSTextAlignmentRight;
        
        _transitOnTimeLabel = label;
    }
    return _transitOnTimeLabel;
}

- (void)setUpViews {
    
    // Add Cell Stack View
    UIStackView *cellStackView = [[UIStackView alloc] init];
    cellStackView.translatesAutoresizingMaskIntoConstraints = NO;
    cellStackView.axis = UILayoutConstraintAxisHorizontal;
    cellStackView.alignment = UIStackViewAlignmentCenter;
    cellStackView.distribution = UIStackViewDistributionFill;
    cellStackView.spacing = 10;
    
    [self.contentView addSubview:cellStackView];
    
    UILayoutGuide *edge = self.contentView.layoutMarginsGuide;
    [self.contentView addConstraints:@[
        [cellStackView.leadingAnchor constraintEqualToAnchor:edge.leadingAnchor],
        [cellStackView.trailingAnchor constraintEqualToAnchor:edge.trailingAnchor],
        [cellStackView.topAnchor constraintEqualToAnchor:edge.topAnchor],
        [cellStackView.bottomAnchor constraintEqualToAnchor:edge.bottomAnchor],
    ]];
    
    UIStackView *labelsStackView = [[UIStackView alloc] init];
    labelsStackView.translatesAutoresizingMaskIntoConstraints = NO;
    labelsStackView.axis = UILayoutConstraintAxisVertical;
    labelsStackView.alignment = UIStackViewAlignmentLeading;
    labelsStackView.distribution = UIStackViewDistributionFill;
    cellStackView.spacing = 0;
    
    [labelsStackView addArrangedSubview:self.transitTitleLabel];
    [labelsStackView addArrangedSubview:self.transitDetailLabel];
    
    [cellStackView addArrangedSubview:self.transitIconImageView];
    [cellStackView addArrangedSubview:labelsStackView];
    
    UIStackView *timeStackView = [[UIStackView alloc] init];
    timeStackView.translatesAutoresizingMaskIntoConstraints = NO;
    timeStackView.axis = UILayoutConstraintAxisVertical;
    timeStackView.alignment = UIStackViewAlignmentFill;
    timeStackView.distribution = UIStackViewDistributionFill;
    timeStackView.spacing = 0;

    [timeStackView addArrangedSubview:self.transitTimesLabel];
    [timeStackView addArrangedSubview:self.transitOnTimeLabel];
    
    UIStackView *panelStackView = [[UIStackView alloc] init];
    panelStackView.translatesAutoresizingMaskIntoConstraints = NO;
    panelStackView.axis = UILayoutConstraintAxisHorizontal;
    panelStackView.alignment = UIStackViewAlignmentTop;
    panelStackView.distribution = UIStackViewDistributionFill;
    panelStackView.spacing = 10;

    [panelStackView addArrangedSubview:labelsStackView];
    [panelStackView addArrangedSubview:timeStackView];
    
    [cellStackView addArrangedSubview:panelStackView];
    
    //timeStackView.hidden = YES;
}




//- (instancetype)initWithFrame:(CGRect)frame
//{
//    self = [super initWithFrame:frame];
//    if (self) {
//        <#statements#>
//    }
//    return self;
//}

//- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
//    
//    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
//    if (self) {
//        
//        [self setUpViews];
//        
//    }
//    return self;
//}
//
//- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
//    [super setSelected:selected animated:animated];
//
//    // Configure the view for the selected state
//}

@end
