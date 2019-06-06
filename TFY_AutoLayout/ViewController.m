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
@property(nonatomic , strong)UIView *view1,*view2,*view3;
@property(nonatomic , strong)UILabel *label,*label2,*label3;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    self.label = [UILabel new];
    self.label.backgroundColor = [UIColor brownColor];
    self.label.text = @"这个错误从- NOTE可以看出, 是项目中的这个文件ChineseToPinyin.h找不到, 回到项目 编译一下也会报这个错. 是因为我修改了本地文件中的这个文件的路径, 项目中引用的还是原先的路径这个错误从- NOTE可以看出, 是项目中的这个文件ChineseToPinyin.h找不到, 回到项目 编译一下也会报这个错. 是因为我修改了本地文件中的这个文件的路径, 项目中引用的还是原先的路径这个错误从- NOTE可以看出, 是项目中的这个文件ChineseToPinyin.h找不到, 回到项目 编译一下也会报这个错. 是因为我修改了本地文件中的这个文件的路径, 项目中引用的还是原先的路径这个错误从- NOTE可以看出, 是项目中的这个文件ChineseToPinyin.h找不到, 回到项目 编译一下也会报这个错. 是因为我修改了本地文件中的这个文件的路径, 项目中引用的还是原先的路径这个错误从- NOTE可以看出, 是项目中的这个文件ChineseToPinyin.h找不到, 回到项目 编译一下也会报这个错. 是因为我修改了本地文件中的这个文件的路径, 项目中引用的还是原先的路径这个错误从- NOTE可以看出, 是项目中的这个文件ChineseToPinyin.h找不到";
    self.label.textColor = [UIColor greenColor];
    self.label.numberOfLines=0;
    self.label.font = [UIFont systemFontOfSize:15];
    [self.view addSubview:self.label];
    

    self.label.tfy_LeftSpace(50).tfy_TopSpace(64).tfy_RightSpace(50).tfy_HeightAuto();
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.backgroundColor = [UIColor blueColor];
    btn.titleLabel.font = [UIFont systemFontOfSize:16];
    [btn setTitle:@"收齐" forState:UIControlStateNormal];
    [btn setTitle:@"展开" forState:UIControlStateSelected];
    btn.tag=1;
    [btn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
    btn.tfy_IsSafe(YES).tfy_LeftSpaceEqualView(self.label).tfy_TopSpaceToView(10, self.label).tfy_RightSpaceEqualView(self.label).tfy_Height(50);
    
    NSArray *arr = @[@"view1",@"view2",@"view3"];
    UIView *views;
    for (NSInteger i=0; i<arr.count; i++) {
        views = [UIView new];
        if (i==0) {
           views.backgroundColor = [UIColor yellowColor];
        }
        else if (i==1){
            views.backgroundColor = [UIColor blackColor];
        }
        else if (i==2){
            views.backgroundColor = [UIColor greenColor];
        }
        
        [self.view addSubview:views];
        
        views.tfy_LeftSpace(0+i*[UIScreen mainScreen].bounds.size.width/3).tfy_TopSpaceToView(10, btn).tfy_size([UIScreen mainScreen].bounds.size.width/3, 80);
        
    }
    
    TFY_StackView *stackView = [TFY_StackView new];
    stackView.backgroundColor = [UIColor cyanColor];
    stackView.tfy_Edge = UIEdgeInsetsMake(10, 10, 10, 10);
    stackView.tfy_Orientation = Horizontal;// 自动横向垂直混合布局
    stackView.tfy_HSpace = 10;
    stackView.tfy_VSpace = 10;
    [self.view addSubview:stackView];
    
    stackView.tfy_LeftSpace(0).tfy_TopSpaceToView(10, views).tfy_RightSpace(0).tfy_Height(100).tfy_IsSafe(YES);
    
    UIView * sublable211 = [UIView new];
    UIView * sublable212 = [UIView new];
    UIButton * sublable213 = [UIButton new];
    [sublable213 setTitle:@"下个界面" forState:UIControlStateNormal];
    [sublable213 setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    sublable213.tag=2;
    [sublable213 addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    UIView * sublable214 = [UIView new];
    
    sublable211.backgroundColor = [UIColor grayColor];
    sublable212.backgroundColor = [UIColor magentaColor];
    sublable213.backgroundColor = [UIColor redColor];
    sublable214.backgroundColor = [UIColor yellowColor];
    
    // 添加子元素到容器视图
    [stackView addSubview:sublable211];
    [stackView addSubview:sublable212];
    [stackView addSubview:sublable213];
    [stackView addSubview:sublable214];
    
    [stackView tfy_StartLayout];//使用这个最后需要调用这个方法才可以运行。
}

-(void)btnClick:(UIButton *)sender{
    if (sender.tag==1) {
        sender.selected = !sender.selected;
        if (sender.selected) {
            /// 高度约束20并且不删除bottom约束
            self.label.tfy_Height(60);
        }else {
            /// 自动高度约束并且不删除bottom约束
            self.label.tfy_HeightAuto();
        }
        
        [UIView animateWithDuration:0.5 animations:^{
            /*layoutIfNeeded不一定会调用layoutSubviews方法。
             setNeedsLayout一定会调用layoutSubviews方法（有延迟，在下一轮runloop结束前）。*/
            [self.view layoutIfNeeded];
        }];
    }
    else{
        NSLog(@"按时发货发了拉横幅拉货发了哈");
    }
    
}

@end
