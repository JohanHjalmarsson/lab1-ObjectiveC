//
//  ProfileContent.m
//  Lab1JohanHjalmarsson
//
//  Created by Johan Hjalmarsson on 2018-01-18.
//  Copyright © 2018 Johan Hjalmarsson. All rights reserved.
//

#import "ProfileContent.h"

@implementation ProfileContent

- (NSDictionary*)getData {
    NSDictionary *data = @{@"name": @"Johan Hjalmarsson",
                           @"age": @"Ålder: 32",
                           @"family": @"Familj: Dottern Charlie (2 år) tillsammans med makan Xenia",
                           @"formerprof": @"Tidigare: Frilansade trummis och producent",
                           @"about": @"Efter att ha fått barn och tröttnat på att resa runt och turnera så mycket bestämmde sig Johan för att söka ITHS. Han är mycket nöjd med beslutet då det visat sig att programmering är riktigt kul och han ser en lång, kreativ och givande karriär framför sig. Johan gillar dessutom tanken på att endast ha med sig en laptop till jobbet till skillnad från tidigare då det var 'ett jävla slitande och släpande hela jävla tiden'."
                           };
    
    return data;
}

@end
