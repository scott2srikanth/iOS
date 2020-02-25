//
//  ViewController.h
//  App1-Simon Says
//
//  Created by T Srikanth Reddy on 25/02/20.
//  Copyright © 2020 T Srikanth Reddy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{
    
    NSTimer *timer;
    NSTimer *simonTimer;
    
    int timeInt;
    int scoreInt;
    int gameStatus;
}

@property (weak, nonatomic) IBOutlet UILabel *timeLabel;
@property (weak, nonatomic) IBOutlet UILabel *scoreLabel;
@property (weak, nonatomic) IBOutlet UIButton *startBtn;
@property (weak, nonatomic) IBOutlet UILabel *gameLabel;

- (IBAction)startGame:(id)sender;

@end

