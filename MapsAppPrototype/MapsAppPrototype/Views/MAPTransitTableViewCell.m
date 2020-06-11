//
//  MAPTransitTableViewCell.m
//  MapsAppPrototype
//
//  Created by Audrey Welch on 6/11/20.
//  Copyright © 2020 Lambda, Inc. All rights reserved.
//

#import "MAPTransitTableViewCell.h"

// Class Extension
@interface MAPTransitTableViewCell ()

// Private Outlets
@property IBOutlet UILabel *transitTitleLabel;
@property IBOutlet UILabel *transitDetailLabel;
@property IBOutlet UIImageView *transitIconImageView;

@property IBOutlet UILabel *transitTimesLabel;
@property IBOutlet UILabel *transitOnTimeLabel;

@property IBOutlet UILabel *serviceChangesTimeLabel;

@property IBOutlet UILabel *transitStepsStartLabel;
@property IBOutlet UILabel *transitStepsEndLabel;
@property IBOutlet UIButton *showAllTransitStepsButton;

@end

// Implementation
@implementation MAPTransitTableViewCell

- (IBAction)showAllTransitStepsTapped:(id)sender {
    
    // Hide button
    self.showAllTransitStepsButton.hidden = true;
    
    // Reveal all steps labels
}


@end
