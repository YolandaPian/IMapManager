

//
//  BDMapView.m
//  MapDemo
//
//  Created by 黄翩翩 on 2017/3/27.
//  Copyright © 2017年 HPP. All rights reserved.
//

#import "BDMapView.h"
#import <BaiduMapAPI_Base/BMKBaseComponent.h>
#import <BaiduMapAPI_Map/BMKMapComponent.h>

@interface BDMapView ()
@property (nonatomic,strong) BMKMapView *mapView;
@end

@implementation BDMapView



-(instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super init]) {
        _mapView = [[BMKMapView alloc] initWithFrame:frame];
    }
    return self;
}

-(UIView *)getView
{
    return _mapView;
}



@end
