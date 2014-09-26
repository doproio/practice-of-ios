//
//  ModalViewController.m
//  grid
//
//  Created by jeakeyliang on 14-9-23.
//  Copyright (c) 2014年 jeakeyliang. All rights reserved.
//

#import "ModalViewController.h"

@interface ModalViewController ()

@end
UILabel *label;
@implementation ModalViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
- (void)loadView
{
    UIView *view=[[UIView alloc]initWithFrame:[UIScreen mainScreen].applicationFrame];
    view.backgroundColor=[UIColor purpleColor];
    label=[[UILabel alloc]initWithFrame:CGRectMake(0, 150, 320, 40)];
    label.textColor=[UIColor whiteColor];
    label.textAlignment=NSTextAlignmentCenter;
    UIButton *btn=[[UIButton alloc]initWithFrame:CGRectMake(80, 200, 160, 40)];
    btn.backgroundColor=[UIColor orangeColor];
    [btn setTitle:@"返回" forState:UIControlStateNormal];
    [view addSubview:label];
    [view addSubview:btn];
    [btn addTarget:self action:@selector(dismiss:) forControlEvents:UIControlEventTouchUpInside];
    self.view=view;
    // 通知模式
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(changeLabelText:) name:@"ChangeLabelTextNotification" object:nil];
}
- (void)dismiss:(id)sender
{
    if ([[UIDevice currentDevice].systemVersion floatValue]<6.0){
        [self dismissModalViewControllerAnimated:YES];
    }else{
        [self dismissViewControllerAnimated:YES completion:^{
            
        }];
    }
    
//    [self.parentViewController dismissModalViewControllerAnimated:YES];
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
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

// 代理模式
//- (void)changeLabelText:(NSString *)text{
//    label.text=text;
//}

// 通知模式
- (void)changeLabelText:(NSNotification *)notice{

    label.text=notice.object;
}
@end
