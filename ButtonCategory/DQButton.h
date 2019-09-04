//
//  DQButton.h
//  ButtonCategory
//
//  Created by 丁强 on 2019/9/4.
//  Copyright © 2019 丁强. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN


/**
 按钮布局枚举

 - DQImageLeft: 图片在左侧
 - DQImageRight: 图片在右侧
 - DQImageTop: 图片在上侧
 - DQImageBottom: 图片在下侧
 */
typedef NS_ENUM(NSUInteger, DQButtonType) {
    DQImageLeft = 0,
    DQImageRight,
    DQImageTop,
    DQImageBottom
};

/**
 按钮对齐枚举

 - DQAlignmentCenter: 居中对齐（所有布局）
 - DQAlignmentRight: 右对齐（仅左右局部适用）
 - DQAlignmentLeft: 左对齐（仅左右局部适用）
 - DQAlignmentTop: 上对齐（仅上下局部适用）
 - DQAlignmentBottom: 下对齐（仅上下局部适用）
 */
typedef NS_ENUM(NSUInteger, DQButtonAlignment) {
    DQAlignmentCenter = 0,
    DQAlignmentRight,
    DQAlignmentLeft,
    DQAlignmentTop,
    DQAlignmentBottom
};

@interface DQButton : UIButton
/**
 按钮布局
 */
@property (nonatomic, assign) DQButtonType layoutType;
/**
 标题与图片间隔
 */
@property (nonatomic, assign) NSInteger space;
/**
 对齐方式
 */
@property (nonatomic, assign) DQButtonAlignment alignment;
@end

NS_ASSUME_NONNULL_END
