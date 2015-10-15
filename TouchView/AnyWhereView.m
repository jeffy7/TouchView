//
//  AnyWhereView.m
//  TouchView
//
//  Created by je_ffy on 15/10/14.
//  Copyright © 2015年 je_ffy. All rights reserved.
//

#import "AnyWhereView.h"

CGPoint startPoint;

@implementation AnyWhereView


- (id)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        
        [self addSubview:self.backImageView];
        
        UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(anyViewTapAction)];
        
        [self.backImageView addGestureRecognizer:tap];
    }
    return self;
}


- (UIImageView *)backImageView {
    if (!_backImageView) {
        _backImageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, self.frame.size.width, self.frame.size.height)];
        _backImageView.backgroundColor = [UIColor redColor];
        _backImageView.userInteractionEnabled = YES;
        _backImageView.layer.cornerRadius = 25.0f;
    }
    return _backImageView;
}

#pragma mark
#pragma mark - Tap Action 
- (void)anyViewTapAction {
    self.tapAction();
}


- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    UITouch *touch = [touches anyObject];
    
    startPoint = [touch locationInView:self];
    
}


- (void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    UITouch *touch = [touches anyObject];
    
    CGPoint endPoint = [touch locationInView:self];
    
    float dx = endPoint.x - startPoint.x;
    float dy = endPoint.y - startPoint.y;
    
    CGPoint newCenter = self.center;
    newCenter.x += dx;
    newCenter.y += dy;
    
    self.center = newCenter;
    
}


- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
}

@end
