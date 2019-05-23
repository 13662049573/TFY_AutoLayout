//
//  ViewController.m
//  TFY_AutoLayout
//
//  Created by 田风有 on 2019/5/22.
//  Copyright © 2019 恋机科技. All rights reserved.
//

#import "ViewController.h"
#import "TFY_AutoLayout/TFY_AutoLayout.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    UILabel *lable = [UILabel new];
    lable.text = @"这个错误从- NOTE可以看出, 是项目中的这个文件ChineseToPinyin.h找不到, 回到项目 编译一下也会报这个错. 是因为我修改了本地文件中的这个文件的路径, 项目中引用的还是原先的路径";
    lable.textColor = [UIColor redColor];
    lable.numberOfLines=0;
    lable.font = [UIFont systemFontOfSize:15];
    [self.view addSubview:lable];
    

    lable.tfy_LeftSpace(0).tfy_TopSpace(100).tfy_RightSpace(0).tfy_HeightAuto();
    
}


@end
