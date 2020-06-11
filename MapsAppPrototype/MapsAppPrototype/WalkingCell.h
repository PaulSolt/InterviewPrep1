//
//  WalkingCell.h
//  MapsAppPrototype
//
//  Created by Paul Solt on 6/10/20.
//  Copyright © 2020 Lambda, Inc. All rights reserved.
//

#import <UIKit/UIKit.h>

// Forward class declaration (in .h)
@class TransitStep;

NS_ASSUME_NONNULL_BEGIN

@interface WalkingCell : UITableViewCell

// dependency injection
@property TransitStep *step; // updateViews

@end

NS_ASSUME_NONNULL_END
