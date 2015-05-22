//
//  GNTabBarViewController.m
//  高宁微博
//
//  Created by gaoning on 15/5/21.
//  Copyright (c) 2015年 GN. All rights reserved.
//  主控制器

#import "GNTabBarViewController.h"
#import "prefix.h"
#import "GNHomeViewController.h"
#import "GNDiscoverViewController.h"
#import "GNMessageCenterTableViewController.h"
#import "GNProfileViewController.h"

@interface GNTabBarViewController ()

@end

@implementation GNTabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    //设置子控制器
    GNHomeViewController * home =[[GNHomeViewController alloc]init];
    [self addChildVc:home WithTitle:@"首页" image:@"tabbar_home" selectTextAttrs:@"tabbar_home_selected"];
    GNMessageCenterTableViewController * messageCenter =[[GNMessageCenterTableViewController alloc]init];
    [self addChildVc:messageCenter WithTitle:@"消息" image:@"tabbar_message_center" selectTextAttrs:@"tabbar_message_selected"];
    GNDiscoverViewController * discover =[[GNDiscoverViewController alloc]init];
    [self addChildVc:discover WithTitle:@"发现" image:@"tabbar_discover" selectTextAttrs:@"tabbar_discover_selected"];
    GNProfileViewController * profile =[[GNProfileViewController alloc]init];
    [self addChildVc:profile WithTitle:@"我" image:@"tabbar_profile" selectTextAttrs:@"tabbar_profile_selected"];
    

    
}

/**
 *  添加一个子控制器
 *
 *  @param childVC       子控制器
 *  @param title         标题
 *  @param image         图片
 *  @param selectedImage 选中时候的图片
 */

-(void)addChildVc:(UIViewController *)childVC WithTitle:(NSString *)title image:(NSString *)image selectTextAttrs:(NSString *)selectedImage
{
    //设置自控制器的文字
    childVC.title =title;  //这一句话实现了下面的两句
//    childVC.tabBarItem.title =title; //设置tabbar的文字
//    childVC.navigationItem.title=title;//设置navigationBar的文字
    //设置子控制器的图片
    childVC.tabBarItem.image=[UIImage imageNamed:image];
    childVC.tabBarItem.selectedImage= [[UIImage imageNamed:selectedImage ] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    
    //设置文字样式
    NSMutableDictionary * textAttrs=[NSMutableDictionary dictionary];
    textAttrs[NSForegroundColorAttributeName]=GNColor(123, 123, 123);
    NSMutableDictionary * selectTextAttrs=[NSMutableDictionary dictionary];
    selectTextAttrs[NSForegroundColorAttributeName]=[UIColor orangeColor];
    
    [childVC.tabBarItem setTitleTextAttributes:textAttrs forState:UIControlStateNormal];
    [childVC.tabBarItem setTitleTextAttributes:selectTextAttrs forState:UIControlStateSelected];
    childVC.view.backgroundColor =GNRandomColor;
    
    UINavigationController * nav =[[UINavigationController alloc]initWithRootViewController:childVC];

    //添加子控制器
    [self addChildViewController:nav];
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
