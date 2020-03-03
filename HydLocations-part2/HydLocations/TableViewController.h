//
//  TableViewController.h
//  HydLocations
//
//  Created by T Srikanth Reddy on 02/03/20.
//  Copyright © 2020 T Srikanth Reddy. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TableViewCell.h"


NS_ASSUME_NONNULL_BEGIN

@interface TableViewController : UITableViewController{
    
    NSArray *title;
    NSArray *description;
    NSArray *image;
}

@end

NS_ASSUME_NONNULL_END
