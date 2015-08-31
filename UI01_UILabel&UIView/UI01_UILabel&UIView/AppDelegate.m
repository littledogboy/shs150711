//
//  AppDelegate.m
//  UI01_UILabel&UIView
//
//  Created by 吴书敏 on 15/8/31.
//  Copyright (c) 2015年 吴书敏. All rights reserved.
//

#import "AppDelegate.h"
#import "UIView+Additions.h"

@interface AppDelegate ()

@end

@implementation AppDelegate
- (void)dealloc
{
    [_window release];
    [super dealloc];
}


// 该方法是 程序加载成功之后执行
// 方法内部，建立了一个 window，以及相关的子视图
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    // 一、 UIWindow
    // UIWindow 是UIView 的子类， 作用是 加载 视图，以及传递 触摸事件给内部的视图。 一般一个App 只有一个window。
    // 我们可以把window 认为画板，其内部的view 认为是 画布，我们一般不会直接操作window，而是操作其内部的view。
    
    
    // 创建一个window，等屏大小
   
    
    // autorelease
    self.window = [[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]] autorelease];
    // Override point for customization after application launch.
    
    // 设置window背景颜色
    self.window.backgroundColor = [UIColor whiteColor];
    // 把self.window 设置为主窗口 且 可见。
    [self.window makeKeyAndVisible];
    
    
    // window 是一个视图容器。我们今后在window上添加视图，才可以显示出来。 凡是添加到window上面的视图，视图的属性window不为空。
    
    // 二、 UIView
    // 1. 创建view，并且初始化。
    UIView *redView = [[UIView alloc] initWithFrame:(CGRectMake(100, 100, 100, 100))];
//    // 第二种方式 init 和 给frame 赋值分开来写。
//    UIView *redView2 = [[UIView alloc] init];
//    redView2.frame = CGRectMake(150, 150, 100, 100);
    
    // 2. 设置view的属性
    redView.backgroundColor = [UIColor redColor]; // 给view的backgroundColor 背景颜色设置为红色。
    
    // 3. 添加视图到window上面。
    [self.window addSubview:redView];
    
    // 4. 释放
    [redView release];
    
    // orangeView
    UIView *orangeView = [[UIView alloc] initWithFrame:(CGRectMake(100, 200, 100, 100))];
    orangeView.backgroundColor = [UIColor orangeColor];
    [self.window addSubview:orangeView];
    [orangeView release];
    
    // yellowView
    UIView *yellowView = [[UIView alloc] initWithFrame:(CGRectMake(100, 300, 100, 100))];
    yellowView.backgroundColor = [UIColor yellowColor];
    [self.window addSubview:yellowView];
    [yellowView release];
    
    // blueView
    UIView *blueView = [[UIView alloc] initWithFrame:(CGRectMake(100, 400, 100, 100))];
    blueView.backgroundColor = [UIColor blueColor];
    [self.window addSubview:blueView];
    [blueView release];
    
    // greenView
    UIView *greenView = [[UIView alloc] initWithFrame:(CGRectMake(100, 500, 100, 100))];
    greenView.backgroundColor = [UIColor greenColor];
    [self.window addSubview:greenView];
    
    // cyanView
    UIView *cyanView = [[UIView alloc] initWithFrame:(CGRectMake(100, 600, 100, 100))];
    cyanView.backgroundColor = [UIColor cyanColor];
    [self.window addSubview:cyanView];
    [cyanView release];
    
    // purpleView
    UIView *purpleView = [[UIView alloc] initWithFrame:(CGRectMake(100, 0, 100, 100))];
    purpleView.backgroundColor = [UIColor purpleColor];
    [self.window addSubview:purpleView];
    [purpleView release];
    
    
    //  frame
    // frame 本身是一个结构体类型，CGRect( CGPoint(x,y), CGSize(width, height))
    // CGRect 结构体的成员是两个结构体
    // CGPoint(x,y) 控制view 的坐标
    // CGSize(width, height) 控制view的大小
    // 创建CGRect类型变量，通过 CGRectMake()函数
    
    // 注意： frame 是子视图 在父视图坐标系中的位置。frame.origin 是子视图 的左上角距离 父视图原点的距离。
    // 在iOS中 一个视图的坐标原点，默认为左上角。
    
    UIView *blackView = [[UIView alloc] initWithFrame:(CGRectMake(0, 0, 100, 100))];
    
//    blackView.frame.origin.y = 100;
    
    CGRect rec1 = blackView.frame;
    rec1.origin.y= 100;// (0, 100)
    blackView.frame = rec1;
    blackView.frameOriginY = 200;
    
    blackView.backgroundColor = [UIColor blackColor];
    [self.window addSubview:blackView];
    [blackView release];
    
    
    
    
    
    
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
