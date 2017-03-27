
//
//  MapFactory.h
//  MapDemo
//
//  Created by 黄翩翩 on 2017/3/27.
//  Copyright © 2017年 HPP. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BaseMapView.h"
@protocol MapFactory <NSObject>
- (id <BaseMapView>)getMapViewWithFrame:(CGRect)frame;
@end
