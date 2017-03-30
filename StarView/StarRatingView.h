//
//  StarRatingView.h
//  WeiQiPei4S
//
//  Created by sks on 15/10/15.
//  Copyright (c) 2015年 sks. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol StarRatingDelegate <NSObject>

- (void)sendGrade:(NSString *)grade;

@end

@interface StarRatingView : UIView
/// @brief 传递评星分数协议方法
@property(nonatomic, weak)id<StarRatingDelegate>delegate;
/// @brief 是否需要半颗星
@property(nonatomic, assign)BOOL isNeedHalf;
/// @brief 评分图片的宽和高
@property(nonatomic, assign)CGFloat imageWidth;
/// @brief 评分图片的宽和高
@property(nonatomic, assign)CGFloat imageHeight;
/// @brief 图片数量
@property(nonatomic, assign)NSInteger imageCount;

@end
