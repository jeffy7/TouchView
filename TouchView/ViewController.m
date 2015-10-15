//
//  ViewController.m
//  TouchView
//
//  Created by je_ffy on 15/10/14.
//  Copyright © 2015年 je_ffy. All rights reserved.
//

#import "ViewController.h"
#import "AnyWhereView.h"


@interface ViewController ()

@property (nonatomic, strong) AnyWhereView *anyWhereView;

@end


/*!
 *  test
 */
@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.view addSubview:self.anyWhereView];
    // Do any additional setup after loading the view, typically from a nib.
}


- (AnyWhereView *)anyWhereView {
    if (!_anyWhereView) {
        _anyWhereView = [[AnyWhereView alloc] initWithFrame:CGRectMake(100, 100, 50, 50)];
        _anyWhereView.backgroundColor = [UIColor yellowColor];
        _anyWhereView.layer.cornerRadius = 25.0f;
        
        __weak ViewController *weakself = self;
        _anyWhereView.tapAction = ^(void){
            /*!
             *  直接实现点击的方法
             */
            [weakself dosomething];
        };
        
    }
    return _anyWhereView;
}


- (void)dosomething {
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
