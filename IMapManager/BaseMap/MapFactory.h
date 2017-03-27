
//
//  MapFactory.h
//  MapDemo
//
//  Created by 黄翩翩 on 2017/3/27.
//  Copyright © 2017年 HPP. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BaseMapView.h"
/**
 利用工厂模式流水线生成特定的地图视图
 */
@protocol MapFactory <NSObject>
- (id <BaseMapView>)getMapViewWithFrame:(CGRect)frame;
@end
