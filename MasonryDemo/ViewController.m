//
//  ViewController.m
//  MasonryDemo
//
//  Created by Richard Wang on 16/8/6.
//  Copyright © 2016年 Richard Wang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIView *superView = self.view;
    UIView *view1 = [[UIView alloc] init];
    UIView *view2 = [[UIView alloc] init];
    UIView *view3 = [[UIView alloc] init];
    
    view1.translatesAutoresizingMaskIntoConstraints = NO;
    view1.backgroundColor = [UIColor greenColor];
    
    view2.translatesAutoresizingMaskIntoConstraints = NO;
    view2.backgroundColor = [UIColor redColor];
    view3.translatesAutoresizingMaskIntoConstraints = NO;
    view3.backgroundColor = [UIColor yellowColor];
    
    [view1 addSubview:view2];
    [view1 addSubview:view3];
    [superView addSubview:view1];
    
    UIEdgeInsets padding = UIEdgeInsetsMake(10, 10, 10, 10);
    
    [superView addConstraints:@[
                               [NSLayoutConstraint constraintWithItem:view1 attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:superView attribute:NSLayoutAttributeTop multiplier:1.0 constant:padding.top],
                               [NSLayoutConstraint constraintWithItem:view1 attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:superView attribute:NSLayoutAttributeLeft multiplier:1.0 constant:padding.left],
                               [NSLayoutConstraint constraintWithItem:view1 attribute:NSLayoutAttributeBottom relatedBy:NSLayoutRelationEqual toItem:superView attribute:NSLayoutAttributeBottom multiplier:1.0 constant:-padding.bottom],
                               [NSLayoutConstraint constraintWithItem:view1 attribute:NSLayoutAttributeRight relatedBy:NSLayoutRelationEqual toItem:superView attribute:NSLayoutAttributeRight multiplier:1.0 constant:-padding.right]
                               ]];
    
    
    
    NSLayoutConstraint *constrainTop = [NSLayoutConstraint constraintWithItem:view2 attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:view1 attribute:NSLayoutAttributeTop multiplier:1.0 constant:padding.top];
    NSLayoutConstraint *constrainLeft = [NSLayoutConstraint constraintWithItem:view2 attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:view1 attribute:NSLayoutAttributeLeft multiplier:1.0 constant:padding.left];
    NSLayoutConstraint *constrainBottom = [NSLayoutConstraint constraintWithItem:view2 attribute:NSLayoutAttributeBottom relatedBy:NSLayoutRelationEqual toItem:view1 attribute:NSLayoutAttributeBottom multiplier:1.0 constant:-padding.bottom];
    NSLayoutConstraint *constrainRight = [NSLayoutConstraint constraintWithItem:view2 attribute:NSLayoutAttributeRight relatedBy:NSLayoutRelationEqual toItem:view1 attribute:NSLayoutAttributeRight multiplier:1.0 constant:-padding.right];
    NSLayoutConstraint *constrainWidth = [NSLayoutConstraint constraintWithItem:view2 attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:view1 attribute:NSLayoutAttributeWidth multiplier:0.5 constant:0.0];
    constrainTop.active = YES;
    constrainLeft.active = YES;
    constrainBottom.active = YES;
    constrainRight.active = YES;
    constrainWidth.active = YES;
//
    NSLayoutConstraint *constrainTop3 = [NSLayoutConstraint constraintWithItem:view3 attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:view1 attribute:NSLayoutAttributeTop multiplier:1.0 constant:padding.top];
    NSLayoutConstraint *constrainLeft3 = [NSLayoutConstraint constraintWithItem:view3 attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:view2 attribute:NSLayoutAttributeRight multiplier:1.0 constant:padding.left];
    NSLayoutConstraint *constrainBottom3 = [NSLayoutConstraint constraintWithItem:view3 attribute:NSLayoutAttributeBottom relatedBy:NSLayoutRelationEqual toItem:view1 attribute:NSLayoutAttributeBottom multiplier:1.0 constant:-padding.bottom];
    NSLayoutConstraint *constrainRight3 = [NSLayoutConstraint constraintWithItem:view3 attribute:NSLayoutAttributeRight relatedBy:NSLayoutRelationEqual toItem:view1 attribute:NSLayoutAttributeRight multiplier:1.0 constant:-padding.right];
    NSLayoutConstraint *constrainWidth3 = [NSLayoutConstraint constraintWithItem:view3 attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:view1 attribute:NSLayoutAttributeWidth multiplier:0.5 constant:padding.left];
    constrainTop3.active = YES;
    constrainLeft3.active = YES;
    constrainBottom3.active = YES;
    constrainRight3.active = YES;
    constrainWidth3.active = YES;
//
//    [view1 addConstraints:@[constrainTop, constrainLeft, constrainBottom, constrainRight]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
