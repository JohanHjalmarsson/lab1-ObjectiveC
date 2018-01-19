//
//  ViewController.m
//  Lab1JohanHjalmarsson
//
//  Created by Johan Hjalmarsson on 2018-01-15.
//  Copyright © 2018 Johan Hjalmarsson. All rights reserved.
//

#import "ViewController.h"
#import "Setting.h"
#import <QuartzCore/QuartzCore.h>

@interface ViewController ()
@property (strong, nonatomic) IBOutlet UIView *viewWindow;
@property (nonatomic) Setting *settings;
@property (weak, nonatomic) IBOutlet UIButton *aboutButton;
@property (weak, nonatomic) IBOutlet UIButton *settingsButton;
@property (weak, nonatomic) IBOutlet UIButton *gameButton;
@property (weak, nonatomic) IBOutlet UIView *roundView;
@property (weak, nonatomic) IBOutlet UIView *smallRoundView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self setTheme];
    [self setButtonAlpha:self.aboutButton float:0.5f];
    [self setButtonAlpha:self.settingsButton float:0.5f];
    [self setButtonAlpha:self.gameButton float:0.5f];
    
    
}

- (void)loadViewIfNeeded {
    [super loadViewIfNeeded];
    [self setTheme];
    [self setButtonAlpha:self.aboutButton float:0.5f];
    [self setButtonAlpha:self.settingsButton float:0.5f];
    [self setButtonAlpha:self.gameButton float:0.5f];
    [self animateButton:self.aboutButton time:0.3f x:95 y:71];
    [self animateButton:self.settingsButton time:0.3f x:95 y:136];
    [self animateButton:self.gameButton time:0.3f x:95 y:200];
    
}
- (void)viewDidAppear:(BOOL)animated {
    [self animateButton:self.aboutButton time:0.7f x:95 y:71];
    [self animateButton:self.settingsButton time:0.7f x:95 y:136];
    [self animateButton:self.gameButton time:0.7f x:95 y:200];
    
}

- (void)setTheme {
    self.settings = [[Setting alloc] init];
    [self.settings setProperties];
    self.viewWindow.backgroundColor = [UIColor colorWithRed:self.settings.colorRedPrimary green:self.settings.colorGreenPrimary blue:self.settings.colorBluePrimary alpha:1.0];
    UIColor *buttonColor = [UIColor colorWithRed:self.settings.colorRedSecondary green:self.settings.colorGreenSecondary blue:self.settings.colorBlueSecondary alpha:1.0f];
    self.aboutButton.backgroundColor = buttonColor;
    self.settingsButton.backgroundColor = buttonColor;
    self.gameButton.backgroundColor = buttonColor;
    
    self.viewWindow.tintColor = [UIColor blackColor];
    /*
    self.aboutButton.layer.cornerRadius = 55;
    self.aboutButton.clipsToBounds = YES;
    self.settingsButton.layer.cornerRadius = 5;
    self.settingsButton.clipsToBounds = YES;
    self.gameButton.layer.cornerRadius = 5;
    self.gameButton.clipsToBounds = YES;
    */
    self.roundView.layer.cornerRadius = 187.5;
    self.roundView.clipsToBounds = YES;
    self.roundView.backgroundColor = [UIColor colorWithRed:self.settings.colorRedSecondary green:self.settings.colorGreenSecondary blue:self.settings.colorBlueSecondary alpha:1.0f];
    
    self.smallRoundView.layer.cornerRadius = 150;
    self.roundView.clipsToBounds = YES;
    
    
}

- (void)animateButton:(UIButton*)button time:(float)time x:(float)x y:(float)y {
    [UIButton animateWithDuration:time animations:^{
        button.alpha = 1.0f;
        
        button.frame = CGRectMake(x, y, button.frame.size.width, 30);
        //button.frame = CGRectMake(self.viewWindow.frame.size.width/2-button.frame.size.width/2, button.frame.origin.y, button.frame.size.width, 30);
        button.layer.cornerRadius = 5;
    }];
    
}


- (void)setButtonAlpha:(UIButton*)button float:(float)alpha {
    button.alpha = alpha;
    button.layer.cornerRadius = 55;
    button.clipsToBounds = YES;
    button.frame = CGRectMake(95, self.smallRoundView.frame.origin.y+self.smallRoundView.frame.size.height/5, button.frame.size.width, button.frame.size.width);
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
