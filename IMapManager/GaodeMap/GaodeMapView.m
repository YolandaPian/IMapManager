
//
//  GaodeMapView.m
//  MapDemo
//
//  Created by 黄翩翩 on 2017/3/27.
//  Copyright © 2017年 HPP. All rights reserved.
//

#import "GaodeMapView.h"
#import <AMapFoundationKit/AMapFoundationKit.h>
#import <MAMapKit/MAMapKit.h>


@interface GaodeMapView ()
@property (nonatomic,strong) MAMapView *mapView;
@end
@implementation GaodeMapView


-(instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super init]) {
        _mapView = [[MAMapView alloc] initWithFrame:frame];
    }
    return self;
}


-(UIView *)getView
{
    return _mapView;
}
@end
