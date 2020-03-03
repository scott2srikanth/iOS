//
//  DetailViewController.m
//  HydLocations
//
//  Created by T Srikanth Reddy on 03/03/20.
//  Copyright © 2020 T Srikanth Reddy. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.navigationItem.title=self.detailmodel[0];
    self.detailImage.image=[UIImage imageNamed:self.detailmodel[2]];
    self.detailTitle.text=self.detailmodel[0];
    
    if ([self.detailTitle.text isEqualToString:@"Golconda"]) {
        self.detailTextView.text=@"Golconda Fort, also known as Golkonda is a fortified citadel and an early capital city of the Qutb Shahi dynasty, located in Hyderabad, Telangana, India. Because of the vicinity of diamond mines, especially Kollur Mine, Golconda flourished as a trade centre of large diamonds, known as the Golconda Diamonds.";
    }
    
    if ([self.detailTitle.text isEqualToString:@"Charminar"]) {
        self.detailTextView.text=@"The Charminar, constructed in 1591, is a monument and mosque located in Hyderabad, Telangana, India. The landmark has become known globally as a symbol of Hyderabad and is listed among the most recognized structures in India.";
    }
    if ([self.detailTitle.text isEqualToString:@"Hussan Sagar"]) {
        self.detailTextView.text=@"Hussain Sagar is a heart-shaped lake in Hyderabad, Telangana, built by Ibrahim Quli Qutb Shah in 1563. ";
    }
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)getDirection:(id)sender {
}
@end
