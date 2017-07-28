//
//  MasonryAutoViewController.m
//  MasonryDemo
//
//  Created by Richard Wang on 16/8/6.
//  Copyright © 2016年 Richard Wang. All rights reserved.
//

#import "MasonryAutoViewController.h"
#import "Masonry.h"
#import "AttributeView.h"

@interface MasonryAutoViewController ()

@end

@implementation MasonryAutoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIView *superView = self.view;
    UIView *view1 = [[UIView alloc] init];
    view1.backgroundColor = [UIColor greenColor];
//    view1.translatesAutoresizingMaskIntoConstraints = NO;

    UIView *view2 = [[UIView alloc] init];
    view2.backgroundColor = [UIColor redColor];
    
    UIView *view3 = [[UIView alloc] init];
    view3.backgroundColor = [UIColor whiteColor];
    
    UIView *view4 = [[UIView alloc] init];
    view4.backgroundColor = [UIColor blueColor];
//    
//    [view1 addSubview:view2];
//    [view1 addSubview:view3];
//    [view1 addSubview:view4];
//    [superView addSubview:view1];
    
//    UIEdgeInsets padding = UIEdgeInsetsMake(10, 10, 10, 10);
//    
//    [view1 mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.top.equalTo(superView.mas_top).with.offset(padding.top);
//        make.left.equalTo(superView.mas_left).with.offset(padding.left);
//        make.bottom.equalTo(superView.mas_bottom).with.offset(-padding.bottom);
//        make.right.equalTo(superView.mas_right).with.offset(-padding.right);
//    }];
//    
//    [view2 mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.top.equalTo(view1.mas_top).with.offset(padding.top);
//        make.left.equalTo(view1.mas_left).with.offset(padding.left);
//        make.bottom.equalTo(view4.mas_top).with.offset(-padding.bottom);
//        make.right.equalTo(view3.mas_left).with.offset(-padding.right);
//        make.width.equalTo(view3);
//        make.height.equalTo(view3.mas_height);
//        make.height.equalTo(view4.mas_height);
////        make.height.equalTo(@[view3.height, view4.height]);
//    }];
//    
//    [view3 mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.top.equalTo(view1.mas_top).with.offset(padding.top);
//        make.left.equalTo(view2.mas_right).with.offset(padding.left);
//        make.bottom.equalTo(view4.mas_top).with.offset(-padding.bottom);
//        make.right.equalTo(view1.mas_right).with.offset(-padding.right);
//        make.width.equalTo(view2);
//        make.height.equalTo(@[view2.mas_height, view4.mas_height]);
//    }];
//    
//    [view4 mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.top.equalTo(view2.mas_bottom).with.offset(padding.top);
//        make.left.equalTo(view1.mas_left).with.offset(padding.left);
//        make.bottom.equalTo(view1.mas_bottom).with.offset(-padding.bottom);
//        make.right.equalTo(view1.mas_right).with.offset(-padding.right);
//        make.height.equalTo(@[view2, view3]);
//    }];
//    
    
    
//    [view1 mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.edges.equalTo(superView).width.insets(padding);
//    }];

    AttributeView *attributeView = [[AttributeView alloc] init];
    [superView addSubview:attributeView];
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
