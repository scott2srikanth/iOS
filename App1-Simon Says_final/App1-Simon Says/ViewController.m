//
//  ViewController.m
//  App1-Simon Says
//
//  Created by T Srikanth Reddy on 25/02/20.
//  Copyright © 2020 T Srikanth Reddy. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    timeInt =20;
    scoreInt = 0;
    gameStatus = 0;
    
    self.timeLabel.text=[NSString stringWithFormat:@"Time: %i",timeInt];
    self.scoreLabel.text=[NSString stringWithFormat:@"Score: %i",scoreInt];
    
    self.gameLabel.layer.cornerRadius = 20;
    self.gameLabel.clipsToBounds = YES;
    
    self.leftSwipe = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(handelSwipe:)];
    self.rightSwipe = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(handelSwipe:)];
    self.upSwipe = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(handelSwipe:)];
    self.downSwipe = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(handelSwipe:)];

    //mapping direction
    self.leftSwipe.direction = UISwipeGestureRecognizerDirectionLeft;
    self.rightSwipe.direction = UISwipeGestureRecognizerDirectionRight;
    self.upSwipe.direction = UISwipeGestureRecognizerDirectionUp;
    self.downSwipe.direction = UISwipeGestureRecognizerDirectionDown;
    
    // allocate to view
    [self.view addGestureRecognizer:self.leftSwipe];
    [self.view addGestureRecognizer:self.rightSwipe];
    [self.view addGestureRecognizer:self.upSwipe];
    [self.view addGestureRecognizer:self.downSwipe];
    
}
- (IBAction)startGame:(id)sender {
    if(timeInt==20){
        timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(updateTime) userInfo:nil repeats:YES];
        self.startBtn.enabled=NO;
        self.startBtn.alpha=0.5;
        [self says];
        gameStatus = 1;
    }
    if(timeInt==0){
        timeInt =20;
        scoreInt = 0;
        gameStatus = 0;
        self.timeLabel.text=[NSString stringWithFormat:@"Time: %i",timeInt];
        self.scoreLabel.text=[NSString stringWithFormat:@"Score: %i",scoreInt];
        [self.startBtn setTitle:@"Start Game" forState:UIControlStateNormal];
        gameStatus = 0;
        self.gameLabel.text = @"Simon Says";
    }
}

-(void)updateTime{
    timeInt--;
    self.timeLabel.text=[NSString stringWithFormat:@"Time: %i",timeInt];
    if(timeInt==0){
        [timer invalidate];
        [simonTimer invalidate];
        self.startBtn.enabled=YES;
        self.startBtn.alpha=1.0;
        [self.startBtn setTitle:@"Restart" forState:UIControlStateNormal];
        gameStatus = 0;
    }
}
-(void)says{
    NSArray *arr=@[@"Swipe Left",@"Swipe Right",@"Swipe Up",@"Swipe Down"];
    
    int random = arc4random() % arr.count;
    self.gameLabel.text = arr[random];
    
    simonTimer =[NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(says) userInfo:nil repeats:NO];
}

-(void)handelSwipe:(UISwipeGestureRecognizer *)sender{
    if(gameStatus==1){
        if(sender.direction==UISwipeGestureRecognizerDirectionLeft){
            [simonTimer invalidate];
            if([self.gameLabel.text isEqualToString:@"Swipe Left"]){
                scoreInt++;
                self.scoreLabel.text=[NSString stringWithFormat:@"Score: %i",scoreInt];
                
                [self says];
            }
            else{
                scoreInt--;
                self.scoreLabel.text=[NSString stringWithFormat:@"Score: %i",scoreInt];
                
                [self says];
            }
        }
        
        
        if(sender.direction==UISwipeGestureRecognizerDirectionRight){
            [simonTimer invalidate];
            if([self.gameLabel.text isEqualToString:@"Swipe Right"]){
                scoreInt++;
                self.scoreLabel.text=[NSString stringWithFormat:@"Score: %i",scoreInt];
                
                [self says];
            }
            else{
                scoreInt--;
                self.scoreLabel.text=[NSString stringWithFormat:@"Score: %i",scoreInt];
                
                [self says];
            }
        }
        
        
        
        if(sender.direction==UISwipeGestureRecognizerDirectionUp){
            [simonTimer invalidate];
            if([self.gameLabel.text isEqualToString:@"Swipe Up"]){
                scoreInt++;
                self.scoreLabel.text=[NSString stringWithFormat:@"Score: %i",scoreInt];
                
                [self says];
            }
            else{
                scoreInt--;
                self.scoreLabel.text=[NSString stringWithFormat:@"Score: %i",scoreInt];
                
                [self says];
            }
        }
        
        
        if(sender.direction==UISwipeGestureRecognizerDirectionDown){
            [simonTimer invalidate];
            if([self.gameLabel.text isEqualToString:@"Swipe Down"]){
                scoreInt++;
                self.scoreLabel.text=[NSString stringWithFormat:@"Score: %i",scoreInt];
                
                [self says];
            }
            else{
                scoreInt--;
                self.scoreLabel.text=[NSString stringWithFormat:@"Score: %i",scoreInt];
                
                [self says];
            }
        }
    }
}

@end
