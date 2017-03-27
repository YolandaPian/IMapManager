//
//  ViewController.m
//  MapDemo
//
//  Created by 黄翩翩 on 2017/3/27.
//  Copyright © 2017年 HPP. All rights reserved.
//

#import "ViewController.h"
#import <MAMapKit/MAMapKit.h>
#import <AMapFoundationKit/AMapFoundationKit.h>

#import <BaiduMapAPI_Map/BMKMapView.h>

#import "GaodeMapView.h"

#import "BDMapView.h"

#import "BaiduMapViewFactory.h"
#import "GaodeMapViewFactory.h"
@interface ViewController ()<BMKMapViewDelegate>
@property (nonatomic,strong) BMKMapView *baiduView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //集成高德地图
//    [[AMapServices sharedServices] setEnableHTTPS:YES];
//    MAMapView *mapView = [[MAMapView alloc] initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height)];
//    [self.view addSubview:mapView];
//    //显示定位的蓝点
//    mapView.showsUserLocation = YES;
//    mapView.userTrackingMode = MAUserTrackingModeFollow;
//    mapView.showTraffic = YES;
//    mapView.mapType = MAMapTypeSatellite;
    
    //集成百度地图
//    _baiduView = [[BMKMapView alloc] initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height)];
//    _baiduView.mapType = BMKMapTypeStandard;
//    _baiduView.trafficEnabled = YES;//显示交通
//    _baiduView.showIndoorMapPoi = YES;
//    [self.view addSubview:_baiduView];
//    _baiduView.logoPosition = BMKLogoPositionLeftTop;//logo位置
    
    //集成高德地图的协议设计
//    id<BaseMapView> mapView =[[GaodeMapView alloc] initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height)];
//    [self.view addSubview:[mapView getView]];
//    
//    //集成百度地图的协议设计
//    id<BaseMapView> BDmapView =[[BDMapView alloc] initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height)];
//    [self.view addSubview:[mapView getView]];
//    
    //百度地图工厂
    
//    id<MapFactory> mapFactory = [[BaiduMapViewFactory alloc] init];
//    id<BaseMapView> BmapView = [mapFactory getMapViewWithFrame:self.view.frame];
//    [self.view addSubview:[BmapView getView]];
    
    //高德地图工厂
    id<MapFactory> mapFactory = [[GaodeMapViewFactory alloc] init];
    id<BaseMapView> mapView =[mapFactory getMapViewWithFrame:self.view.frame];
    [self.view addSubview:[mapView getView]];
    
    
    
    
    // Do any additional setup after loading the view, typically from a nib.
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    _baiduView.delegate = self;
}

-(void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    _baiduView.delegate = nil;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
    // Dispose of any resources that can be recreated.
}


@end
