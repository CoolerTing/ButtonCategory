//
//  DQButton.m
//  ButtonCategory
//
//  Created by 丁强 on 2019/9/4.
//  Copyright © 2019 丁强. All rights reserved.
//

#import "DQButton.h"

@interface DQButton()
/**
 是否需要布局
 只要设置了布局即为YES，否则为NO
 当isLayout为NO的时候，不进行布局，直接return
 */
@property (nonatomic, assign) BOOL isLayout;
@end

@implementation DQButton

- (void)setLayoutType:(DQButtonType)layoutType {
    _layoutType = layoutType;
    self.isLayout = YES;
}

- (void)layoutSubviews {
    [super layoutSubviews];
    if (!self.isLayout) { return; }
    
    CGRect imageRect = self.imageView.frame;
    CGRect titleRect = self.titleLabel.frame;
    if (self.layoutType == DQImageRight) {
        
        CGFloat width = MAX(imageRect.size.width + titleRect.size.width + self.space, self.frame.size.width);
        self.frame = CGRectMake(self.frame.origin.x, self.frame.origin.y, width, self.frame.size.height);
        
        if (self.alignment == DQAlignmentLeft) {
            self.titleLabel.frame = CGRectMake(0, titleRect.origin.y, titleRect.size.width, titleRect.size.height);
            self.imageView.frame = CGRectMake(self.titleLabel.frame.origin.x + titleRect.size.width + self.space, imageRect.origin.y, imageRect.size.width, imageRect.size.height);
        } else if (self.alignment == DQAlignmentRight) {
            self.titleLabel.frame = CGRectMake(self.frame.size.width - imageRect.size.width - titleRect.size.width - self.space, titleRect.origin.y, titleRect.size.width, titleRect.size.height);
            self.imageView.frame = CGRectMake(self.titleLabel.frame.origin.x + titleRect.size.width + self.space, imageRect.origin.y, imageRect.size.width, imageRect.size.height);
        } else {
            self.titleLabel.frame = CGRectMake((self.frame.size.width - imageRect.size.width - titleRect.size.width - self.space) / 2, titleRect.origin.y, titleRect.size.width, titleRect.size.height);
            self.imageView.frame = CGRectMake(self.titleLabel.frame.origin.x + titleRect.size.width + self.space, imageRect.origin.y, imageRect.size.width, imageRect.size.height);
        }
        
    } else if (self.layoutType == DQImageLeft) {
        
        CGFloat width = MAX(imageRect.size.width + titleRect.size.width + self.space, self.frame.size.width);
        self.frame = CGRectMake(self.frame.origin.x, self.frame.origin.y, width, self.frame.size.height);
        
        if (self.alignment == DQAlignmentLeft) {
            self.imageView.frame = CGRectMake(0, imageRect.origin.y, imageRect.size.width, imageRect.size.height);
            self.titleLabel.frame = CGRectMake(self.imageView.frame.origin.x + imageRect.size.width + self.space, titleRect.origin.y, titleRect.size.width, titleRect.size.height);
        } else if (self.alignment == DQAlignmentRight) {
            self.imageView.frame = CGRectMake(self.frame.size.width - imageRect.size.width - titleRect.size.width - self.space, imageRect.origin.y, imageRect.size.width, imageRect.size.height);
            self.titleLabel.frame = CGRectMake(self.imageView.frame.origin.x + imageRect.size.width + self.space, titleRect.origin.y, titleRect.size.width, titleRect.size.height);
        } else {
            self.imageView.frame = CGRectMake((self.frame.size.width - imageRect.size.width - titleRect.size.width - self.space) / 2, imageRect.origin.y, imageRect.size.width, imageRect.size.height);
            self.titleLabel.frame = CGRectMake(self.imageView.frame.origin.x + imageRect.size.width + self.space, titleRect.origin.y, titleRect.size.width, titleRect.size.height);
        }
        
    } else if (self.layoutType == DQImageBottom) {
        
        CGFloat width = MAX(MAX(imageRect.size.width, titleRect.size.width), self.frame.size.width);
        CGFloat height = MAX(imageRect.size.height + titleRect.size.height + self.space, self.frame.size.height);
        self.frame = CGRectMake(self.frame.origin.x, self.frame.origin.y, width, height);
        
        if (self.alignment == DQAlignmentTop) {
            self.titleLabel.frame = CGRectMake(self.frame.size.width / 2 - titleRect.size.width / 2, 0, titleRect.size.width, titleRect.size.height);
            self.imageView.frame = CGRectMake(self.frame.size.width / 2 - imageRect.size.width / 2, self.titleLabel.frame.origin.y + titleRect.size.height + self.space, imageRect.size.width, imageRect.size.height);
        } else if (self.alignment == DQAlignmentBottom) {
            self.titleLabel.frame = CGRectMake(self.frame.size.width / 2 - titleRect.size.width / 2, self.frame.size.height - imageRect.size.height - titleRect.size.height - self.space, titleRect.size.width, titleRect.size.height);
            self.imageView.frame = CGRectMake(self.frame.size.width / 2 - imageRect.size.width / 2, self.titleLabel.frame.origin.y + titleRect.size.height + self.space, imageRect.size.width, imageRect.size.height);
        } else {
            self.titleLabel.frame = CGRectMake(self.frame.size.width / 2 - titleRect.size.width / 2, (self.frame.size.height - imageRect.size.height - titleRect.size.height - self.space) / 2, titleRect.size.width, titleRect.size.height);
            self.imageView.frame = CGRectMake(self.frame.size.width / 2 - imageRect.size.width / 2, self.titleLabel.frame.origin.y + titleRect.size.height + self.space, imageRect.size.width, imageRect.size.height);
        }
        
    } else if (self.layoutType == DQImageTop) {
        
        CGFloat width = MAX(MAX(imageRect.size.width, titleRect.size.width), self.frame.size.width);
        CGFloat height = MAX(imageRect.size.height + titleRect.size.height + self.space, self.frame.size.height);
        self.frame = CGRectMake(self.frame.origin.x, self.frame.origin.y, width, height);
        
        if (self.alignment == DQAlignmentTop) {
            self.imageView.frame = CGRectMake(self.frame.size.width / 2 - imageRect.size.width / 2, 0, imageRect.size.width, imageRect.size.height);
            self.titleLabel.frame = CGRectMake(self.frame.size.width / 2 - titleRect.size.width / 2, self.imageView.frame.origin.y + imageRect.size.height + self.space, titleRect.size.width, titleRect.size.height);
        } else if (self.alignment == DQAlignmentBottom) {
            self.imageView.frame = CGRectMake(self.frame.size.width / 2 - imageRect.size.width / 2, self.frame.size.height - imageRect.size.height - titleRect.size.height - self.space, imageRect.size.width, imageRect.size.height);
            self.titleLabel.frame = CGRectMake(self.frame.size.width / 2 - titleRect.size.width / 2, self.imageView.frame.origin.y + imageRect.size.height + self.space, titleRect.size.width, titleRect.size.height);
        } else {
            self.imageView.frame = CGRectMake(self.frame.size.width / 2 - imageRect.size.width / 2, (self.frame.size.height - imageRect.size.height - titleRect.size.height - self.space) / 2, imageRect.size.width, imageRect.size.height);
            self.titleLabel.frame = CGRectMake(self.frame.size.width / 2 - titleRect.size.width / 2, self.imageView.frame.origin.y + imageRect.size.height + self.space, titleRect.size.width, titleRect.size.height);
        }
        
    } else { return; }
}
@end
