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

@end

@implementation ViewControllerSettings

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.settings = [[Setting alloc] init];
    [self.settings setProperties];
    [self setSliders];
    [self refresh];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)sliderListener:(id)sender {
    [self refresh];
    [self.settings setBackgroundColors:self.redSlider.value blue:self.blueSlider.value green:self.greenSlider.value];
    
}
- (void) refresh {
    self.colorView.backgroundColor = [self currentColor];
}

- (UIColor*) currentColor {
    
    return [UIColor colorWithRed:self.redSlider.value
                           green:self.greenSlider.value
                            blue:self.blueSlider.value
                           alpha:0.7f];
}

- (void) setColor:(UIColor*)color {
    self.colorView.backgroundColor = color;
}

- (void) setSliders{
    
    self.redSlider.value = self.settings.colorBlueP;
    self.greenSlider.value = self.settings.colorGreenP;
    self.blueSlider.value = self.settings.colorBlueP;
    
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
