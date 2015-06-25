//
//  StarTrekDictionaries.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekDictionaries.h"

@implementation StarTrekDictionaries

- (NSString *)favoriteDrinkForStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
    /* WORK HERE */
    id drink =  characterDictionary[@"favorite drink"];
    if (drink != nil) {
        return drink;
    }
    return nil;
}

- (NSArray *)arrayOfFavoriteDrinksForStarTrekCharacters:(NSArray *)charactersArray {
    /* WORK HERE */
    NSMutableArray *drinkArray = [[NSMutableArray alloc] init];
    for ( NSDictionary *character in charactersArray) {
        NSString *obj = character[@"favorite drink"];
        if (character != nil) {
            [drinkArray addObject:obj];
        }
    }
    return drinkArray;
}

- (NSDictionary *)dictionaryWithQuoteAddedToStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
    /* WORK HERE */
    NSMutableDictionary *mutableCharacterDictionary = [characterDictionary mutableCopy];
    NSData *quote = mutableCharacterDictionary[@"quote"];
    [mutableCharacterDictionary removeObjectForKey:@"quote"];
    
    if (quote == nil) {
        [mutableCharacterDictionary setObject:@"A quote was not included." forKey:@"quote"];
    } else if ([quote isKindOfClass:[NSString class]]) {
        [mutableCharacterDictionary setObject:@"A quote was included, but it wasn't a string." forKey: @"quote"];
    } else if ([quote length] == 0) {
        [mutableCharacterDictionary setObject:@"A quote was included, but it was blank." forKey:@"quote"];
    }
    
    return [NSDictionary dictionaryWithDictionary:mutableCharacterDictionary];
}

@end
