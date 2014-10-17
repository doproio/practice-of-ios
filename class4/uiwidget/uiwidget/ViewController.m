//
//  ViewController.m
//  uiwidget
//
//  Created by hahnzhu on 14/10/15.
//  Copyright (c) 2014年 hahnzhu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController


- (void)loadView {
    [super loadView];
    
    UIView * view = [[UIView alloc] initWithFrame: [UIScreen mainScreen].bounds];
    [view setBackgroundColor:[UIColor whiteColor]];
    self.view = view;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    
    tv = [[UITextView alloc] initWithFrame: CGRectMake(10, 30, 300, 180)];
    tv.layer.borderWidth = 1;
    tv.layer.cornerRadius = 8.0f;
    tv.layer.borderColor = [[UIColor blackColor] CGColor];
    tv.backgroundColor = [UIColor whiteColor];
    tv.keyboardAppearance = UIKeyboardAppearanceLight;
    tv.keyboardType = UIKeyboardTypeDefault;
    tv.returnKeyType = UIReturnKeyDefault;
    tv.tag = 1;
    tv.delegate = self;
    
    
    UIToolbar * topView = [[UIToolbar alloc]initWithFrame:CGRectMake(0, 0, 320, 30)];
    
    UIBarButtonItem * btn1 = [[UIBarButtonItem alloc]initWithTitle:@"^_^" style:UIBarButtonItemStylePlain target:self action:@selector(btn1)];
    
    UIBarButtonItem * btn2 = [[UIBarButtonItem alloc]initWithTitle:@"T^T" style:UIBarButtonItemStylePlain target:self action:@selector(btn2)];
    
    UIBarButtonItem * btn3 = [[UIBarButtonItem alloc]initWithBarButtonSystemItem: UIBarButtonSystemItemFlexibleSpace target:self action:nil];
    
    UIBarButtonItem * btn4 = [[UIBarButtonItem alloc]initWithTitle:@"收起" style:UIBarButtonItemStyleDone target:self action:@selector(btn4)];
    
    NSArray * buttonsArray = [NSArray arrayWithObjects:btn1, btn2, btn3, btn4, nil];
    [topView setItems: buttonsArray];

    [tv setInputAccessoryView: topView];

    slider = [[UISlider alloc] initWithFrame: CGRectMake(10, 240, 300, 20)];
    slider.maximumValue = 40;
    slider.minimumValue = 12;
    slider.value = 12;
    
    alertview = [[UIAlertView alloc] initWithTitle: @"警告" message:@"文本框不能为空" delegate:self cancelButtonTitle:@"取消" otherButtonTitles:@"关闭", nil];
    
    
    [self.view addSubview:tv];
    [self.view addSubview:slider];
    
    [slider addTarget:self action:@selector(slideValueChange:) forControlEvents:UIControlEventValueChanged];
}


// 滑块值改变
- (void)slideValueChange: (UISlider *)mslider {
    UISlider * newslider = mslider;
    tv.font = [UIFont systemFontOfSize: newslider.value];
}


// TextView 值将要发生改变
-(BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString*)text {
    
    if ([text isEqualToString: @"\n"]) {
        
        if ([tv.text isEqualToString: @""]) {
            
            [alertview show];
            return NO;
        }
    }
    return YES;
}


- (void)btn1 {
    tv.text = [[NSString alloc] initWithFormat:@"%@ %@", tv.text, @"^_^" ];
}

- (void)btn2 {
    tv.text = [[NSString alloc] initWithFormat:@"%@ %@", tv.text, @"T^T" ];
}

- (void)btn4 {
    [tv resignFirstResponder];
}


@end
