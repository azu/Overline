//
// Created by yaakaito on 2012/12/22.
//
// To change the template use AppCode | Preferences | File Templates.
//


#import "NSArray+Random.h"


@implementation NSArray (Random)

- (NSArray *)shuffle {
    return [self shuffledArray];
}

- (NSArray *)shuffledArray {
    NSMutableArray *shuffled = [self mutableCopy];
    for (NSInteger i = [shuffled count] - 1; i > 0; i--) {
        [shuffled exchangeObjectAtIndex:arc4random() % (i + 1)
                      withObjectAtIndex:i];
    }
    return shuffled;
}

- (id)anyObject {
    return [self objectAtIndex:arc4random() % [self count]];
}
@end