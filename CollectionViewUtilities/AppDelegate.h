//
//  AppDelegate.h
//  CollectionViewUtilities
//
//  Created by admin on 10/03/2023.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow * window;
@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

