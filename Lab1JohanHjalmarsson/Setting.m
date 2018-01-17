//
//  Setting.m
//  Lab1JohanHjalmarsson
//
//  Created by Johan Hjalmarsson on 2018-01-17.
//  Copyright © 2018 Johan Hjalmarsson. All rights reserved.
//

#import "Setting.h"

@implementation Setting


- (void)setBackgroundColors:(float)colorRed blue:(float)colorBlue green:(float)colorGreen {
    [[NSUserDefaults standardUserDefaults] setFloat:colorRed forKey:@"colorRedFloat"];
     [[NSUserDefaults standardUserDefaults] setFloat:colorBlue forKey:@"colorBlueFloat"];
     [[NSUserDefaults standardUserDefaults] setFloat:colorGreen forKey:@"colorGreenFloat"];
    [[NSUserDefaults standardUserDefaults] synchronize];
    //NSLog(@"red %f", colorRed);
    
    
    
}
- (void)setTextSize {
    
    
}

- (void) setProperties {
    self.colorRedP = [[NSUserDefaults standardUserDefaults] floatForKey:@"colorRedFloat"];
    self.colorBlueP = [[NSUserDefaults standardUserDefaults] floatForKey:@"colorBlueFloat"];
    self.colorGreenP = [[NSUserDefaults standardUserDefaults] floatForKey:@"colorGreenFloat"];
}


@end
