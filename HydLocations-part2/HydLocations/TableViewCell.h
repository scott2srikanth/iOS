//
//  TableViewCell.h
//  HydLocations
//
//  Created by T Srikanth Reddy on 02/03/20.
//  Copyright © 2020 T Srikanth Reddy. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface TableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIImageView *cellImage;
@property (weak, nonatomic) IBOutlet UILabel *cellTitle;
@property (weak, nonatomic) IBOutlet UILabel *cellDescription;

@end

NS_ASSUME_NONNULL_END
