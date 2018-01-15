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

@property (weak, nonatomic) IBOutlet UILabel *correctAnswerLabel;

@end

@implementation ViewControllerGame

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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
