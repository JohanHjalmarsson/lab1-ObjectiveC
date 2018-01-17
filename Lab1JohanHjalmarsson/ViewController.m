//
//  ViewController.m
//  Lab1JohanHjalmarsson
//
//  Created by Johan Hjalmarsson on 2018-01-15.
//  Copyright © 2018 Johan Hjalmarsson. All rights reserved.
//

#import "ViewController.h"
#import "Setting.h"

@interface ViewController ()
@property (strong, nonatomic) IBOutlet UIView *viewWindow;
@property (nonatomic) Setting *settings;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self setBackground];
    
}

- (void)setBackground {
    self.settings = [[Setting alloc] init];
    [self.settings setProperties];
    self.viewWindow.backgroundColor = [UIColor colorWithRed:self.settings.colorRedP green:self.settings.colorGreenP blue:self.settings.colorBlueP alpha:0.7f];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
