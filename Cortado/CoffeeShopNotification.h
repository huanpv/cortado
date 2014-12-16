@import UIKit;

@class BeverageConsumption;
@class PreferredDrinks;

@interface CoffeeShopNotification : NSObject

+ (void)registerNotificationTypeWithPreferences:(PreferredDrinks *)preferences;

+ (BeverageConsumption *)drinkForIdentifier:(NSString *)identifier notification:(UILocalNotification *)notif;

@property (readonly) NSString *name;
@property (readonly, weak) UIApplication *application;

- (id)initWithName:(NSString *)name;

- (id)initWithName:(NSString *)name
       application:(UIApplication *)application NS_DESIGNATED_INITIALIZER;

- (void)schedule;

@end
