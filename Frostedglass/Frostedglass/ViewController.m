//
//  ViewController.m
//  Frostedglass
//
//  Created by mac on 2017/5/4.
//  Copyright © 2017年 zhang. All rights reserved.
//

#import "ViewController.h"
#import "UIImageView+LBBlurredImage.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    UIImageView *bgImgView = [[UIImageView alloc] initWithFrame:self.view.bounds];
    bgImgView.contentMode = UIViewContentModeScaleAspectFill;
    [bgImgView setImage:[UIImage imageNamed:@"huoying4.jpg"]];
    bgImgView.userInteractionEnabled = YES;
    [self.view addSubview:bgImgView];
    
    //     毛玻璃的样式(枚举)
    //     UIBlurEffectStyleExtraLight,
    //     UIBlurEffectStyleLight,
    //     UIBlurEffectStyleDark
    
    UIBlurEffect *effect = [UIBlurEffect effectWithStyle:UIBlurEffectStyleDark];
    UIVisualEffectView *effectView = [[UIVisualEffectView alloc] initWithEffect:effect];
    effectView.frame = CGRectMake(0, 0, bgImgView.frame.size.width*0.5, bgImgView.frame.size.height);
    [bgImgView addSubview:effectView];
    
    
    
    /**
    
    UIImageView *bgImgView = [[UIImageView alloc] initWithFrame:self.view.bounds];
    //bgImgView.image = [UIImage imageNamed:@"huoying4.jpg"];
    bgImgView.contentMode = UIViewContentModeScaleAspectFill;
    // 方法1,没有blurRadius参数,因为默认是20
    //[bgImgView setImageToBlur:[UIImage imageNamed:@"huoying4.jpg"] completionBlock:nil];
    // 方法2,对背景图片进行毛玻璃效果处理,参数blurRadius默认是20,可指定,最后一个参数block回调可为nil
    [bgImgView setImageToBlur:[UIImage imageNamed:@"huoying4.jpg"] blurRadius:30 completionBlock:nil];
    bgImgView.userInteractionEnabled = YES;
    [self.view addSubview:bgImgView];
    
     */
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
