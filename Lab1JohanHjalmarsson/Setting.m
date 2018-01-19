//
//  Setting.m
//  Lab1JohanHjalmarsson
//
//  Created by Johan Hjalmarsson on 2018-01-17.
//  Copyright © 2018 Johan Hjalmarsson. All rights reserved.
//

#import "Setting.h"


@implementation Setting

-(instancetype)init{
    self = [super init];
    if(self) {
        [self isFirstTime];
    }
    return self;
}


- (void)setBackgroundColors:(float)colorRed blue:(float)colorBlue green:(float)colorGreen {
    [[NSUserDefaults standardUserDefaults] setFloat:colorRed forKey:@"colorRedFloat"];
     [[NSUserDefaults standardUserDefaults] setFloat:colorBlue forKey:@"colorBlueFloat"];
     [[NSUserDefaults standardUserDefaults] setFloat:colorGreen forKey:@"colorGreenFloat"];
    
    [[NSUserDefaults standardUserDefaults] synchronize];
    //NSLog(@"red %f", colorRed);
    
    
    
}
- (void) setSecondaryColors:(float)colorRed green:(float)colorGreen blue:(float)colorBlue {
    [[NSUserDefaults standardUserDefaults] setFloat:colorRed forKey:@"colorRedSecondaryFloat"];
    [[NSUserDefaults standardUserDefaults] setFloat:colorBlue forKey:@"colorBlueSecondaryFloat"];
    [[NSUserDefaults standardUserDefaults] setFloat:colorGreen forKey:@"colorGreenSecondaryFloat"];
    [[NSUserDefaults standardUserDefaults] synchronize];
}
- (void)setTextSize {
    
    
}

- (void) setProperties {
    self.colorRedPrimary = [[NSUserDefaults standardUserDefaults] floatForKey:@"colorRedFloat"];
    self.colorBluePrimary = [[NSUserDefaults standardUserDefaults] floatForKey:@"colorBlueFloat"];
    self.colorGreenPrimary = [[NSUserDefaults standardUserDefaults] floatForKey:@"colorGreenFloat"];
    
    self.colorRedSecondary = [[NSUserDefaults standardUserDefaults] floatForKey:@"colorRedSecondaryFloat"];
    self.colorBlueSecondary = [[NSUserDefaults standardUserDefaults] floatForKey:@"colorBlueSecondaryFloat"];
    self.colorGreenSecondary = [[NSUserDefaults standardUserDefaults] floatForKey:@"colorGreenSecondaryFloat"];
    
}

- (void) setTheme:(int)selection {
    switch (selection) {
        case 0:
            self.colorRedPrimary = 0.98f;
            self.colorBluePrimary = 0.96f;
            self.colorGreenPrimary = 0.91f;
            self.colorAlphaPrimary = 1.0f;
            
            self.colorRedSecondary = 0.70f;
            self.colorGreenSecondary = 0.62f;
            self.colorBlueSecondary = 0.86;
            self.colorAlphaSecondary = 1.0f;
            
            [self setBackgroundColors:0.98f blue:0.96f green:0.91f];
            [self setSecondaryColors:0.70f green:0.62f blue:0.86f];
            
            break;
        case 1:
            self.colorRedPrimary = 0.30f;
            self.colorGreenPrimary = 0.71f;
            self.colorBluePrimary = 0.67f;
            self.colorAlphaPrimary = 1.0f;
            
            self.colorRedSecondary = 0.61f;
            self.colorGreenSecondary = 0.15f;
            self.colorBlueSecondary = 0.69;
            self.colorAlphaSecondary = 1.0f;
            
            [self setBackgroundColors:0.30f blue:0.67f green:0.71f];
            [self setSecondaryColors:0.61f green:0.15f blue:0.69f];
            
            break;
        case 2:
        
            self.colorRedPrimary = 0.26f;
            self.colorGreenPrimary = 0.26f;
            self.colorBluePrimary = 0.26f;
            self.colorAlphaPrimary = 1.0f;
            
            self.colorRedSecondary = 0.47f;
            self.colorGreenSecondary = 0.56f;
            self.colorBlueSecondary = 0.61;
            self.colorAlphaSecondary = 1.0f;
            
            [self setBackgroundColors:0.26f blue:0.26f green:0.26f];
            [self setSecondaryColors:0.47f green:0.56f blue:0.61f];
            
            break;
            
        default:
            break;
    }
    


    
}

// FIXA DET HÄR!
-(void)isFirstTime{
    [self setProperties];
    if (self.colorRedPrimary == 0.0f && self.colorBluePrimary == 0.0f  && self.colorGreenPrimary == 0.0f) {
        [self setTheme:0];
        [self setProperties];
        
    }
}


@end
