//
//  TutorialSection.m
//  CollectionViewUtilities
//
//  Created by admin on 10/03/2023.
//

#import "TutorialSection.h"

@implementation TutorialSection

- (UIImage *)image
{
    NSString *imageName = [NSString stringWithFormat:@"%@",self.identifier];
    return [UIImage imageNamed:imageName];
}

+ (NSArray *)allSections
{
    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"tutorial" ofType:@"json"];
    NSData* data = [NSData dataWithContentsOfFile:filePath];
    __autoreleasing NSError* error = nil;
    NSDictionary * result = [NSJSONSerialization JSONObjectWithData:data
                                                options:kNilOptions
                                                              error:&error];

    if (error != nil) return nil;
    
    NSMutableArray *allSections = [[NSMutableArray alloc] init];
    
    for(NSDictionary *sectionInfo in result[@"sections"]){
        TutorialSection *section = [[TutorialSection alloc] init];
        section.identifier = sectionInfo[@"id"];
        section.title = sectionInfo[@"title"];
        section.detail = sectionInfo[@"description"];
        
        [allSections addObject:section];
    }
    
    return allSections;
}

@end
