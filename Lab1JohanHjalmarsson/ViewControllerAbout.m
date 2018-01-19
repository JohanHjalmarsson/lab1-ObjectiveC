//
//  ViewControllerAbout.m
//  Lab1JohanHjalmarsson
//
//  Created by Johan Hjalmarsson on 2018-01-17.
//  Copyright © 2018 Johan Hjalmarsson. All rights reserved.
//

#import "ViewControllerAbout.h"
#import "Setting.h"
#import "ProfileContent.h"


@interface ViewControllerAbout ()
@property (strong, nonatomic) IBOutlet UIView *viewWindow;
@property (nonatomic) Setting *settings;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *ageLabel;
@property (weak, nonatomic) IBOutlet UITextView *familyLabel;
@property (weak, nonatomic) IBOutlet UITextView *formerProfLabel;
@property (weak, nonatomic) IBOutlet UITextView *aboutTextView;
@property (nonatomic) ProfileContent *profileContent;
@property (weak, nonatomic) IBOutlet UIView *footer;

@end

@implementation ViewControllerAbout

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self setTheme];
    self.profileContent = [[ProfileContent alloc] init];
    [self setContent:[self.profileContent getData]];
}

- (void)setTheme {
    self.settings = [[Setting alloc] init];
    [self.settings setProperties];
    self.viewWindow.backgroundColor = [UIColor colorWithRed:self.settings.colorRedPrimary green:self.settings.colorGreenPrimary blue:self.settings.colorBluePrimary alpha:1.0f];
    
    self.footer.backgroundColor = [UIColor colorWithRed:self.settings.colorRedSecondary green:self.settings.colorGreenSecondary blue:self.settings.colorBlueSecondary alpha:1.0f];
    
    
    
}

- (void) setContent:(NSDictionary*)data {
    self.ageLabel.text = data[@"age"];
    self.nameLabel.text = data[@"name"];
    self.familyLabel.text = data[@"family"];
    self.formerProfLabel.text = data[@"formerprof"];
    self.aboutTextView.text = data[@"about"];
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
