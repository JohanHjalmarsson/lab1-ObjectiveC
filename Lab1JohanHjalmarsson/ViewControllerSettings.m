//
//  ViewControllerSettings.m
//  Lab1JohanHjalmarsson
//
//  Created by Johan Hjalmarsson on 2018-01-17.
//  Copyright © 2018 Johan Hjalmarsson. All rights reserved.
//

#import "ViewControllerSettings.h"
#import "Setting.h"

@interface ViewControllerSettings ()
@property (weak, nonatomic) IBOutlet UISlider *redSlider;
@property (weak, nonatomic) IBOutlet UISlider *greenSlider;
@property (weak, nonatomic) IBOutlet UISlider *blueSlider;
@property (weak, nonatomic) IBOutlet UIView *colorView;
@property (nonatomic) Setting *settings;
@property (weak, nonatomic) IBOutlet UIButton *buttonThemeOne;
@property (weak, nonatomic) IBOutlet UIButton *buttonThemeTwo;
@property (weak, nonatomic) IBOutlet UIButton *buttonThemeThree;

@end

@implementation ViewControllerSettings

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.settings = [[Setting alloc] init];
    //[self.settings setProperties];
    [self setButtonColors];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
//- (IBAction)sliderListener:(id)sender {
 //   [self refresh];
 //   [self.settings setBackgroundColors:self.redSlider.value blue:self.blueSlider.value green:self.greenSlider.value];
    
//}


- (void) setColor:(UIColor*)color {
    self.colorView.backgroundColor = color;
}

- (void) setSliders{
    
    self.redSlider.value = self.settings.colorBlueP;
    self.greenSlider.value = self.settings.colorGreenP;
    self.blueSlider.value = self.settings.colorBlueP;
    
}
- (IBAction)onTema1:(id)sender {
    [self.settings setTheme:0];
     [self.navigationController popViewControllerAnimated:YES];
}
- (IBAction)onTema2:(id)sender {
    [self.settings setTheme:1];
     [self.navigationController popViewControllerAnimated:YES];
}
- (IBAction)onTema3:(id)sender {
    [self.settings setTheme:2];
     [self.navigationController popViewControllerAnimated:YES];
}

- (void) setButtonColors {
    self.buttonThemeOne.backgroundColor = [UIColor colorWithRed:0.98f green:0.91 blue:0.96f alpha:1.0f];
    self.buttonThemeTwo.backgroundColor = [UIColor colorWithRed:0.30f green:0.71f blue:0.67f alpha:1.0f];
    self.buttonThemeThree.backgroundColor = [UIColor colorWithRed:0.26f green:0.26f blue:0.26f alpha:1.0f];
    
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
