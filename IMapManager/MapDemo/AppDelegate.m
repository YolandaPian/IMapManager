//
//  AppDelegate.m
//  MapDemo
//
//  Created by 黄翩翩 on 2017/3/27.
//  Copyright © 2017年 HPP. All rights reserved.
//

#import "AppDelegate.h"
#import <AMapFoundationKit/AMapFoundationKit.h>
#import <BaiduMapKit/BaiduMapAPI_Base/BMKMapManager.h>
@interface AppDelegate ()<BMKGeneralDelegate>
@property (nonatomic,strong)  BMKMapManager*baiduManager;
@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    NSLog( @"%@",BundleString);
    // Override point for customization after application launch.
    
    //集成高德地图
    [self startAMapservice];
    
    //集成百度地图
    [self startBaiduService];
    return YES;
}

- (void)startAMapservice
{
    [AMapServices sharedServices].apiKey = @"ffa28915299099a412566c62ffc3e82e";
}

- (void)startBaiduService
{
    _baiduManager = [[BMKMapManager alloc] init];
    BOOL rel= [_baiduManager start:@"C75jBALXecsQBX4g6vy0CAwpZrqpOWCg" generalDelegate:self];
    if (!rel) {
        NSLog(@"manager start failed!");
    }

}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
