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

@property (nonatomic) float colorRedP;
@property (nonatomic) float colorBlueP;
@property (nonatomic) float colorGreenP;

@end
