//
// Created by kazuma.ukyo on 3/29/13.
//
// To change the template use AppCode | Preferences | File Templates.
//


#import "NSDictionary+OverlineBlocksKit.h"
#import "NSDictionary+Enumeration.h"

@implementation NSDictionary (OverlineBlocksKit)
- (void)each:(void (^)(id, NSString *))block {
    [self enumerateKeysAndObjectsUsingBlock:^(id key, id obj, BOOL *stop) {
        block(obj, key);
    }];
}

- (NSDictionary *)map:(id (^)(id, NSString *))block {
    return [self mappedDictionaryUsingBlock:block];
}

- (id)reduce:(id (^)(id, id, NSString *))block memo:(id)memo {
    return [self reducedObjectUsingBlock:block memo:memo];
}

@end