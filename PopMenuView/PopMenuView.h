
#import <UIKit/UIKit.h>

typedef void(^SelectedIndexBlock)(NSInteger selectedIndex, NSString *selectedTitle);

@interface PopMenuView : UIView

@property (nonatomic, assign) CGFloat menuWidth;
@property (nonatomic, copy) SelectedIndexBlock action;

- (instancetype)initWithPopMenuWidth:(CGFloat)width popMenuViewY:(CGFloat)y dataArray:(NSArray *)dataArray;

@end
