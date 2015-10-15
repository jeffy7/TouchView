//
//  AnyWhereView.h
//  TouchView
//
//  Created by je_ffy on 15/10/14.
//  Copyright © 2015年 je_ffy. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void (^TapAction)(void);

@interface AnyWhereView : UIView

@property (nonatomic, copy) TapAction tapAction;
@property (nonatomic, strong) UIImageView *backImageView;

@end
