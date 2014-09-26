//
//  ViewController.m
//  grid
//
//  Created by jeakeyliang on 14-9-22.
//  Copyright (c) 2014年 jeakeyliang. All rights reserved.
//

#import "ViewController.h"
#import "ModalViewController.h"
#import "cellButton.h"

@interface ViewController ()

@end

@implementation ViewController

-(void)loadView
{
    UIView *view = [ [ UIView alloc] initWithFrame:[ UIScreen mainScreen].applicationFrame] ;
    [ view setBackgroundColor:[UIColor blackColor]] ;
    self.view = view;
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    CGRect screenRect=[UIScreen mainScreen].bounds;
    float cellW=screenRect.size.width/5;
    float cellH=(screenRect.size.height)/8;
    for (int i=0; i<8; i++) {
        for(int j=0;j<5;j++ ){
            cellButton *btn=[[cellButton alloc] initWithFrame:CGRectMake(j*cellW, i*cellH, cellW, cellH) andIndex:(i*5+j+1)];
            
            [self.view addSubview:btn];
            [btn addTarget:self action:@selector(cellClick:) forControlEvents:UIControlEventTouchUpInside];
        }
    }
}
-(void)cellClick:(id)sender {
    cellButton *btn= (cellButton *)sender;
    ModalViewController *mvc=[[ModalViewController alloc]init];
    self.delete=mvc;
    if ([[UIDevice currentDevice].systemVersion floatValue]<6.0){
        [self presentModalViewController:mvc animated:YES];
    }else{
        [self presentViewController:mvc animated:YES completion:^{
            
        }];
    }
    
    // 代理模式    
//    if([self.delete respondsToSelector:@selector(changeLabelText:)]){
//        [self.delete changeLabelText:[NSString stringWithFormat:@"点击了第%d个格子",btn.index]];
//    }
    
    // 通知模式
    [[NSNotificationCenter defaultCenter] postNotificationName:@"ChangeLabelTextNotification" object:[NSString stringWithFormat:@"点击了第%d个格子",btn.index]];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    NSLog(@"didReceiveMemoryWarning");
    // Dispose of any resources that can be recreated.
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    NSLog(@"viewWillAppear");
}
- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    NSLog(@"viewDidAppear");
}
- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    NSLog(@"viewWillDisappear");
}
- (void)viewDidDisappear:(BOOL)animated{
    [super viewDidDisappear:animated];
    NSLog(@"viewDidDisappear");
}
@end
