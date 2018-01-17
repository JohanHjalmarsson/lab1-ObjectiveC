//
//  ViewControllerAbout.m
//  Lab1JohanHjalmarsson
//
//  Created by Johan Hjalmarsson on 2018-01-17.
//  Copyright © 2018 Johan Hjalmarsson. All rights reserved.
//

#import "ViewControllerAbout.h"
#import "Setting.h"

@interface ViewControllerAbout ()
@property (strong, nonatomic) IBOutlet UIView *viewWindow;
@property (nonatomic) Setting *settings;

@end

@implementation ViewControllerAbout

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
