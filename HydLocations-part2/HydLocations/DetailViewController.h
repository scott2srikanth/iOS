//
//  DetailViewController.h
//  HydLocations
//
//  Created by T Srikanth Reddy on 03/03/20.
//  Copyright © 2020 T Srikanth Reddy. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface DetailViewController : UIViewController

@property(strong,nonatomic) NSArray *detailmodel;
@property (weak, nonatomic) IBOutlet UIImageView *detailImage;
@property (weak, nonatomic) IBOutlet UILabel *detailTitle;
@property (weak, nonatomic) IBOutlet UITextView *detailTextView;
@property (weak, nonatomic) IBOutlet MKMapView *detailMap;

- (IBAction)getDirection:(id)sender;

@end

NS_ASSUME_NONNULL_END
