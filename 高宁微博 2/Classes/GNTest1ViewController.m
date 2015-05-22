//
//  GNTest1ViewController.m
//  高宁微博
//
//  Created by gaoning on 15/5/21.
//  Copyright (c) 2015年 GN. All rights reserved.
//

#import "GNTest1ViewController.h"
#import "GNTest2ViewController.h"
#import "UIView+Extension.h"

@interface GNTest1ViewController ()

@end

@implementation GNTest1ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    UIButton * backBtn =[UIButton buttonWithType:UIButtonTypeCustom];
    [backBtn addTarget:self action:@selector(back) forControlEvents:UIControlEventTouchUpInside];
    //设置图片
    [backBtn setBackgroundImage:[UIImage imageNamed:@"navigationbar_back"]forState:UIControlStateNormal];
    [backBtn setBackgroundImage:[UIImage imageNamed:@"navigationbar_back_highlighted"]forState:UIControlStateHighlighted];
    //自定义按钮还需要定义尺寸
    backBtn.size=backBtn.currentBackgroundImage.size;
    self.navigationItem.leftBarButtonItem =[[UIBarButtonItem alloc]initWithCustomView:backBtn];
    
    UIButton * moreBtn =[UIButton buttonWithType:UIButtonTypeCustom];
    [moreBtn addTarget:self action:@selector(more) forControlEvents:UIControlEventTouchUpInside];
    //设置图片
    [moreBtn setBackgroundImage:[UIImage imageNamed:@"navigationbar_more"]forState:UIControlStateNormal];
    [moreBtn setBackgroundImage:[UIImage imageNamed:@"navigationbar_more_highlighted"]forState:UIControlStateHighlighted];
    //自定义按钮还需要定义尺寸
    moreBtn.size=moreBtn.currentBackgroundImage.size;
    self.navigationItem.rightBarButtonItem =[[UIBarButtonItem alloc]initWithCustomView:moreBtn];
    

}

-(void)back
{
    [self.navigationController popViewControllerAnimated:YES];
}
-(void)more
{
    [self.navigationController popToRootViewControllerAnimated:YES];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    GNTest2ViewController * test2 =[[GNTest2ViewController alloc]init];
    test2.title =@"测试控制器2";
    [self.navigationController pushViewController:test2 animated:YES];
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
