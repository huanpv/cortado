#import "PreferredDrinks.h"

@implementation PreferredDrinks

- (id)initWithFirst:(Beverage *)first
             second:(Beverage *)second {
    self = [super init];
    if (!self) return nil;

    _first = first;
    _second = second;

    return self;
}

- (id)preferenceByReplacingDrinkAtIndex:(NSUInteger)index
                              withDrink:(Beverage *)drink {
    if (index == 0) {
        return [[PreferredDrinks alloc] initWithFirst:drink second:self.second];
    } else if (index == 1) {
        return [[PreferredDrinks alloc] initWithFirst:self.first second:drink];
    } else {
        return self;
    }
}

@end
