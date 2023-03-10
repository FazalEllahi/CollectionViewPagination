//
//  ViewController.m
//  CollectionViewUtilities
//
//  Created by admin on 10/03/2023.
//

#import "ViewController.h"
#import "TutorialSectionCollectionViewCell.h"
#import "TutorialSection.h"

@interface ViewController () <UICollectionViewDataSource , UICollectionViewDelegateFlowLayout>
@property (nonatomic, strong) NSArray<TutorialSection*> *sections;
@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.collectionView.dataSource = self;
    self.collectionView.delegate = self;
//    ((UICollectionViewFlowLayout*)self.collectionView.collectionViewLayout).de
    [self.collectionView reloadData];
//    [self.collectionView reloadData];
    // Do any additional setup after loading the view.
}


- (NSArray<TutorialSection*> *)sections
{
    if(!self->_sections){
        self->_sections = [TutorialSection allSections];
    }
    return self->_sections;
}

- (nonnull __kindof UICollectionViewCell *)collectionView:(nonnull UICollectionView *)collectionView cellForItemAtIndexPath:(nonnull NSIndexPath *)indexPath {
    TutorialSectionCollectionViewCell *cell =[collectionView dequeueReusableCellWithReuseIdentifier:@"TutorialSectionCollectionViewCell" forIndexPath:indexPath];
    cell.bgImgView.image = [self.sections[indexPath.row] image];
    return cell;
}

- (NSInteger)collectionView:(nonnull UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return self.sections.count;
}

-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    return [UIScreen mainScreen].bounds.size;
}


- (UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout insetForSectionAtIndex:(NSInteger)section
{
    return UIEdgeInsetsMake(0, 0, 0, 0);
}

- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout minimumInteritemSpacingForSectionAtIndex:(NSInteger)section {
    return 0.0;
}

- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout minimumLineSpacingForSectionAtIndex:(NSInteger)section {
    return 0.0;
}

@end
