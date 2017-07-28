//
//  AttributeView.m
//  MasonryDemo
//
//  Created by Richard Wang on 16/8/7.
//  Copyright © 2016年 Richard Wang. All rights reserved.
//

#import "AttributeView.h"
#import "Masonry.h"

@implementation AttributeView

- (instancetype)init
{
    self = [super init];
    
    if (!self) return nil;
    
    if (self)
    {
        self.frame = CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height);
        CGFloat padding = 50;
        UIView *view1 = [[UIView alloc] init];
        view1.backgroundColor = [UIColor redColor];
        
        UIView *view2 = [[UIView alloc] init];
        view2.backgroundColor = [UIColor yellowColor];
        
        UIView *view3 = [[UIView alloc] init];
        view3.backgroundColor = [UIColor blueColor];
        
        UIView *view4 = [[UIView alloc] init];
        view4.backgroundColor = [UIColor grayColor];
        [self addSubview:view1];
        [self addSubview:view2];
        [self addSubview:view3];
        [self addSubview:view4];
        
        [view1 mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self).with.offset(padding);
            make.left.equalTo(self).with.offset(padding);
            make.right.equalTo(view2.mas_left).with.offset(-padding);
            make.bottom.equalTo(self).with.offset(-padding).priorityLow();
            make.width.equalTo(@[view2, view3, view4]);
            make.height.equalTo(@100);
            make.height.equalTo(@[view2, view3, view4]);
        }];
        [view2 mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self).with.offset(padding);
            make.left.equalTo(view1.mas_right).with.offset(padding);
            make.bottom.equalTo(self).with.offset(-padding).priorityLow();
            make.right.equalTo(view3.mas_left).with.offset(-padding);
            make.width.equalTo(@[view1, view3, view4]);
            make.height.equalTo(@[view1, view3, view4]);
        }];
        
        [view3 mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self).with.offset(padding);
            make.left.equalTo(view2.mas_right).with.offset(padding);
            make.bottom.equalTo(self).with.offset(-padding).priorityLow();
            make.right.equalTo(view4.mas_left).with.offset(-padding);
            make.width.equalTo(@[view1, view2,view4]);
            make.height.equalTo(@[view1, view2, view4]);
        }];
        
        [view4 mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self).with.offset(padding);
            make.left.equalTo(view3.mas_right).with.offset(padding);
            make.bottom.equalTo(self).with.offset(-padding).priorityLow();
            make.right.equalTo(self).with.offset(-padding);
            make.width.equalTo(@[view1, view2, view3]);
            make.height.equalTo(@[view1, view2, view3]);
        }];
    }
    return self;
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
