//
//  TutorialSection.h
//  CollectionViewUtilities
//
//  Created by admin on 10/03/2023.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface TutorialSection : NSObject

@property (nonatomic, copy) NSString *identifier;
@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *detail;
@property (nonatomic, copy) NSString *image_bg;
@property (nonatomic, copy) NSString *image_middle;

- (UIImage *)image;

+ (NSArray *)allSections;

@end

NS_ASSUME_NONNULL_END
