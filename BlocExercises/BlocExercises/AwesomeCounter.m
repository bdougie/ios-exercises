//
//  AwesomeCounter.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "AwesomeCounter.h"

@implementation AwesomeCounter

- (NSString *) stringWithNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    /* WORK HERE */
    NSString *range = @"";
    
    if (number <= otherNumber) {
        while (number <= otherNumber) {
            range = [range stringByAppendingString:@(number).stringValue];
            ++number;
        }
    } else if (number >= otherNumber) {
        while (otherNumber <= number) {
            range = [range stringByAppendingString:@(otherNumber).stringValue];
            ++otherNumber;
        }
    } else {
        range = @(number).stringValue;

    }
    return range;
}

@end
