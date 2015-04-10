//
//  UIViewLayoutViewController.m
//  commonProject
//
//  Created by JEREI on 15-4-10.
//  Copyright (c) 2015年 com.xu.tableview. All rights reserved.
//

#import "ViewController.h"
#import "UIView+UIViewCategory.h"

#define kDeviceWidth [UIScreen mainScreen].bounds.size.width
#define KDeviceHeight [UIScreen mainScreen].bounds.size.height
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
 
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor clearColor];
    
    UIView *view1  = [[UIView alloc] init];
    [view1 layout_width:kDeviceWidth/2];
    [view1 layout_heigth:KDeviceHeight/3];
    [view1 margin_top:20.0f];
    [view1 margin_left:5.0f];
    view1.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:view1];
    UIImageView *imageView1 = [[UIImageView alloc] init];
    [view1 addSubview:imageView1];
    [imageView1 layout_width:44];
    [imageView1 layout_heigth:44];
    [imageView1 layout_horizontalCenter];
    [imageView1 layout_verticalCenter];
    imageView1.image = [UIImage imageNamed:@"my_04@2x.png"];
    
    UILabel *viewllable = [[UILabel alloc] init];
    [view1 addSubview:viewllable];
    [viewllable layout_heigth:20];
    [viewllable layout_width:120];
    [viewllable layout_horizontalCenter];
    [viewllable tobottomView:imageView1 ofPix:5.0];
    viewllable.text = @"我是:View1";
    viewllable.textAlignment = NSTextAlignmentCenter;
    
    UILabel *lableview1 = [[UILabel alloc] init];
    [self.view addSubview:lableview1];
    [lableview1 layout_width:kDeviceWidth/2-15];
    [lableview1 layout_heigth:KDeviceHeight/6-5];
    [lableview1 aligntopwithview:view1];
    [lableview1 torigthView:view1 ofPix:5.0];
    lableview1.text = @"我是lable1   我与View1顶部对齐，并距离View1右边距5个像素";
    lableview1.font = [UIFont boldSystemFontOfSize:15.0];
    lableview1.numberOfLines = 0;
    lableview1.textAlignment = NSTextAlignmentCenter;
    lableview1.backgroundColor = [UIColor yellowColor];
    
    
    UILabel *lableview2 = [[UILabel alloc] init];
    [self.view addSubview:lableview2];
    [lableview2 layout_width:kDeviceWidth/2-15];
    [lableview2 layout_heigth:KDeviceHeight/6];
    [lableview2 alignleftwithview:lableview1];
    [lableview2 tobottomView:lableview1 ofPix:5.0];
    lableview2.text = @"我是lable2 我左边与lable1对齐，并距离lable1下边缘5个像素";
    lableview2.font = [UIFont boldSystemFontOfSize:15.0];
    lableview2.numberOfLines = 0;
    lableview2.textAlignment = NSTextAlignmentCenter;
    lableview2.backgroundColor = [UIColor yellowColor];
    
    UILabel *lableview3 = [[UILabel alloc] init];
    [self.view addSubview:lableview3];
    [lableview3 layout_heigth:KDeviceHeight/3*2];
    [lableview3 layout_width:kDeviceWidth-10];
    [lableview3 tobottomView:view1 ofPix:5.0];
    [lableview3 margin_left:5.0];
    
    lableview3.text = @"我是lableview3 ,他妹的.就这一行代码：[lableview3 tobottomView:view ofPix:5.0]  就把我准确的放在了View1的下面5像素的位置";
    lableview3.font = [UIFont systemFontOfSize:15.0];
    lableview3.textAlignment = NSTextAlignmentCenter;
    lableview3.numberOfLines = 0;
    lableview3.backgroundColor = [UIColor orangeColor];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
