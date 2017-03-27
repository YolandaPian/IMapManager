//
//  BaseMapView.h
//  MapDemo
//
//  Created by 黄翩翩 on 2017/3/27.
//  Copyright © 2017年 HPP. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

/**
 各种地图视图遵循的协议
 */

@protocol BaseMapView <NSObject>
- (UIView *)getView;
- (instancetype)initWithFrame: (CGRect)frame;
@end
