//
//  VideoViewController.m
//  Lab1JohanHjalmarsson
//
//  Created by Johan Hjalmarsson on 2018-01-19.
//  Copyright © 2018 Johan Hjalmarsson. All rights reserved.
//

#import "VideoViewController.h"
#import "YTPlayerView.h"
#import "Setting.h"

@interface VideoViewController ()
@property (weak, nonatomic) IBOutlet YTPlayerView *playerView;
@property (strong, nonatomic) IBOutlet UIView *viewWindow;
@property (nonatomic) Setting *settings;


@end

@implementation VideoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self.playerView loadWithVideoId:@"DSKiZmLjjOc"];
    [self setTheme];
}

- (void)setTheme {
    self.settings = [[Setting alloc] init];
    [self.settings setProperties];
    self.viewWindow.backgroundColor = [UIColor colorWithRed:self.settings.colorRedPrimary green:self.settings.colorGreenPrimary blue:self.settings.colorBluePrimary alpha:1.0f];
    

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
