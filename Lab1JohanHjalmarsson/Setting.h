//
//  Setting.h
//  Lab1JohanHjalmarsson
//
//  Created by Johan Hjalmarsson on 2018-01-17.
//  Copyright © 2018 Johan Hjalmarsson. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Setting : NSObject

- (void)setBackgroundColors:(float)colorRed blue:(float)colorBlue green:(float)colorGreen;
- (void)setTextSize;
- (void)setProperties;
- (void) setTheme:(int)selection;
- (instancetype)init;

@property (nonatomic) float colorRedP;
@property (nonatomic) float colorBlueP;
@property (nonatomic) float colorGreenP;

@property (nonatomic) float colorRedPrimary;
@property (nonatomic) float colorBluePrimary;
@property (nonatomic) float colorGreenPrimary;
@property (nonatomic) float colorAlphaPrimary;

@property (nonatomic) float colorRedSecondary;
@property (nonatomic) float colorBlueSecondary;
@property (nonatomic) float colorGreenSecondary;
@property (nonatomic) float colorAlphaSecondary;


@property (nonatomic) float colorRedText;
@property (nonatomic) float colorBlueText;
@property (nonatomic) float colorGreenText;

@end
