//
//  MyTabBarController.m
//  WangYiNews
//
//  Created by qianfeng on 15/3/29.
//  Copyright (c) 2015年 zhouchao. All rights reserved.
//

#import "MyTabBarController.h"
#import "FirstViewController.h"
#import "SecondViewController.h"
#import "ThirdViewController.h"
#import "ForthViewController.h"

@interface MyTabBarController ()

@end

@implementation MyTabBarController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

+ (MyTabBarController *)creatMyTabBarController {
    MyTabBarController *tabBarController = [[[MyTabBarController alloc] init] autorelease];
    tabBarController.tabBar.hidden = YES;
    
    //创建自己的标签栏
    CGRect screenR = [UIScreen mainScreen].bounds;
    
    UIView *myTabBar = [[[UIView alloc]initWithFrame:CGRectMake(0, screenR.size.height-44, screenR.size.width, 44)] autorelease];
    
    myTabBar.backgroundColor = [UIColor whiteColor];
    
    [tabBarController.view addSubview:myTabBar];
    
    NSArray *selectedImages = @[@"home_footbar_icon_dianping_pressed@2x", @"home_footbar_icon_group_pressed@2x", @"home_footbar_icon_found_pressed@2x", @"home_footbar_icon_my_pressed@2x"];
    NSArray *images = @[@"home_footbar_icon_dianping@2x", @"home_footbar_icon_group@2x", @"home_footbar_icon_found@2x", @"home_footbar_icon_my@2x"];
    
    NSArray *titles = @[@"首页", @"团购", @"发现", @"我的"];
    
    for (int i = 0; i<4; i++) {
        //创建按钮
        UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
        
        CGFloat butW = screenR.size.width/4;
        CGFloat butH = 44;
        
        CGFloat butX = butW*i;
        CGFloat butY = 0;
        
        button.frame = CGRectMake(butX, butY, butW, butH);
        
        UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
        btn.frame = CGRectMake( 28, 3, 25, 25);
        
        [btn addTarget:tabBarController action:@selector(buttonClicked:) forControlEvents:UIControlEventTouchUpInside];
        btn.tag = i + 10;
        
        [button addTarget:tabBarController action:@selector(buttonClicked:) forControlEvents:UIControlEventTouchUpInside];
        
        button.tag = i+10;
        
        [button addSubview:btn];
        
        [myTabBar addSubview:button];
        
        //添加图片
        UIImage *image = [UIImage imageNamed:images[i]];
        //image.size = CGSizeMake(20, 20);
        //image.size = CGSizeMake(20, 20);
        UIImage *selectedImage = [UIImage imageNamed:selectedImages[i]];
        
        //        UIImageView *imageView = [[UIImageView alloc]initWithImage:image];
        
        
        [btn setBackgroundImage:image forState:UIControlStateNormal];
        [btn setBackgroundImage:selectedImage forState:UIControlStateHighlighted];
        //[button setImageEdgeInsets:UIEdgeInsetsMake(-20, 20, 20, 20)];

        
        
        //标题
        UILabel *title = [[UILabel alloc]initWithFrame:CGRectMake(0, 44-14, butW, 14)];
        title.text = titles[i];
        title.textAlignment = NSTextAlignmentCenter;
        title.font = [UIFont systemFontOfSize:12];
        [button addSubview:title];
    }
    
    FirstViewController *fir = [[FirstViewController alloc] init];
    UINavigationController *nav1 = [[[UINavigationController alloc] initWithRootViewController:fir] autorelease];
    [fir release];
    
    SecondViewController *sec = [[SecondViewController alloc] init];
    UINavigationController *nav2 = [[[UINavigationController alloc] initWithRootViewController:sec] autorelease];
    [sec release];
    
    ThirdViewController *thir = [[ThirdViewController alloc] init];
    UINavigationController *nav3 = [[[UINavigationController alloc] initWithRootViewController:thir] autorelease];
    [thir release];
    
    ForthViewController *forth = [[ForthViewController alloc] init];
    UINavigationController *nav4 = [[[UINavigationController alloc] initWithRootViewController:forth] autorelease];
    [forth release];
    
    tabBarController.viewControllers = @[nav1, nav2, nav3, nav4];
    
    tabBarController.selectedIndex = 1;
    
    return tabBarController;
}

-(void)buttonClicked:(UIButton *)button{
    NSLog(@"buttonClicked");
    //选择相应的元素
    self.selectedIndex = button.tag -10;
    
    //将值存起来
    NSUserDefaults *user = [NSUserDefaults standardUserDefaults];
    
    [user setInteger:self.selectedIndex forKey:@"selectedIndex"];
    //同步（立即执行）
    [user synchronize];
    
    /*
     //取得tabbar控制器中的数组
     NSArray *vcArr = [_tabBarVC viewControllers];
     //设置被选中的视图控制器 通过按钮得tag值101，102，103，104 减去101  得到0，1，2，3，的索引值
     _tabBarVC.selectedViewController = [vcArr objectAtIndex:sender.tag - 10];
     
     */
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
