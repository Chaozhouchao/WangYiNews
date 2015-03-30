//
//  FirstViewController.m
//  WangYiNews
//
//  Created by qianfeng on 15/3/29.
//  Copyright (c) 2015年 zhouchao. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        
        self.tabBarItem.title = @"first";
    }
    return self;
}

- (id)init {
    if (self = [super init]) {
        UIImage * image = [[UIImage imageNamed:@"home_footbar_icon_dianping@2x"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        UIImage * imageHL = [[UIImage imageNamed:@"home_footbar_icon_dianping_pressed@2x"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        
        UITabBarItem * tabbarItem = [[UITabBarItem alloc] initWithTitle:nil image:image selectedImage:imageHL];
        self.tabBarItem = tabbarItem;
    }
    return self;
}



- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor redColor];
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
