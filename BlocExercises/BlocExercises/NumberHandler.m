//
//  NumberHandler.m
//  BlocExercises
//
//  Created by Aaron on 6/11/14.
//
//

#import "NumberHandler.h"

@implementation NumberHandler

- (NSNumber *) numberThatIsTwiceAsBigAsNumber:(NSNumber *)number {
    /* WORK HERE */
    return @([number intValue] * 2);
}

- (NSArray *) arrayOfNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    /* WORK HERE */
    NSMutableArray *numberArray = [NSMutableArray new];
    while (number <= otherNumber) {
        [numberArray addObject:[NSNumber numberWithInteger:number]];
        number++;
    }
    return numberArray;
}

- (NSInteger) lowestNumberInArray:(NSArray *)arrayOfNumbers {
    /* WORK HERE */
   return [[arrayOfNumbers valueForKeyPath:@"@min.self"] integerValue];
}

@end
