//
//  ViewControllerGame.m
//  Lab1JohanHjalmarsson
//
//  Created by Johan Hjalmarsson on 2018-01-15.
//  Copyright © 2018 Johan Hjalmarsson. All rights reserved.
//

#import "ViewControllerGame.h"

@interface ViewControllerGame ()
@property (weak, nonatomic) IBOutlet UISlider *slider;
@property (weak, nonatomic) IBOutlet UILabel *sliderValueLabel;
@property (weak, nonatomic) IBOutlet UITextView *displayCorrectAnswer;
@property (nonatomic) int randomNumber;
@property (weak, nonatomic) IBOutlet UIButton *guessButton;
@property (weak, nonatomic) IBOutlet UIButton *startButton;

@property (weak, nonatomic) IBOutlet UILabel *correctAnswerLabel;

@end

@implementation ViewControllerGame

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self showUI:NO];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)sliderListener:(id)sender {
    [self setSliderValueLabel];
}

- (void) setSliderValueLabel {
    [self.sliderValueLabel setText:[NSString stringWithFormat:@"%i",[self getSliderValue]]];
}
// varför funkar detta???
- (int) getSliderValue {
    return self.slider.value*100;
}
- (IBAction)takeGuess:(id)sender {
    int random = [self getRandomNumber];
    
    if ([self getSliderValue] == random) {
        [self.displayCorrectAnswer setText:@"Rätt!"];
    } else {
        [self.displayCorrectAnswer setText:@"Fel! Rätt svar var: "];
        [self.correctAnswerLabel setText:[NSString stringWithFormat:@"%i", random]];
    }
}
- (IBAction)takeGuess2:(id)sender {
    if ([self getSliderValue] == self.randomNumber) {
        [self.displayCorrectAnswer setText:@"Rätt! Talet var:"];
        [self.correctAnswerLabel setText:[NSString stringWithFormat:@"%i", self.randomNumber]];
        [self.startButton setTitle:@"Spela igen" forState:UIControlStateNormal];
    } else {
        if([self getSliderValue] < self.randomNumber) {
            [self.displayCorrectAnswer setText:@"Nej. Talet är för lågt!"];
        } else {
            [self.displayCorrectAnswer setText:@"Nej. Talet är för högt!"];
        }
    }
    
}

- (void)showUI:(BOOL)show {
    if(show) {
        self.slider.hidden = NO;
        self.guessButton.hidden = NO;
        self.displayCorrectAnswer.hidden = NO;
        self.sliderValueLabel.hidden = NO;
    } else {
        self.slider.hidden = YES;
        self.guessButton.hidden = YES;
        self.displayCorrectAnswer.hidden = YES;
        self.sliderValueLabel.hidden = YES;
    }
}
- (IBAction)onStartButton:(id)sender {
    self.randomNumber = [self getRandomNumber];
    [self.displayCorrectAnswer setText:@""];
    [self.correctAnswerLabel setText:@""];
    [self showUI:YES];
    NSLog(@"%i", self.randomNumber);
}

- (int) getRandomNumber {
    return arc4random_uniform(100);
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
