//
//  WGViewController.m
//  WordGame
//
//  Created by 李阳 on 16/1/28.
//  Copyright © 2016年 liyang. All rights reserved.
//

#import "WGViewController.h"
#import "MyTextField.h"
#import "TPKeyboardAvoidingScrollView.h"
#import "SSBouncyButton.h"
@interface WGViewController ()
{
    TPKeyboardAvoidingScrollView *tpScrollView;
}
@end

@implementation WGViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"欢迎来到WordGame";
    CGSize mainsize = [UIScreen mainScreen].bounds.size;
    tpScrollView = [[TPKeyboardAvoidingScrollView alloc] initWithFrame:CGRectMake(0, 0, mainsize.width, mainsize.height)];
    [self.view addSubview:tpScrollView];
    tpScrollView.backgroundColor = [UIColor colorWithRed:201.0/255 green:201.0/255 blue:206.0/255 alpha:1.0];
    [self initlayout];
}

-(void)initlayout{
    CGSize mainsize = [UIScreen mainScreen].bounds.size;
    UIView *containerView = [[UIView alloc] initWithFrame:CGRectMake(10, 10, mainsize.width-20, mainsize.height-84)];
    [tpScrollView addSubview:containerView];
    
    containerView.backgroundColor = [UIColor whiteColor];
    NSAttributedString *signattstr = [[NSAttributedString alloc] initWithString:@"*" attributes:@{NSForegroundColorAttributeName:[UIColor redColor],NSFontAttributeName:[UIFont systemFontOfSize:14.0]}];
    NSAttributedString *contextstr = [[NSAttributedString alloc] initWithString:@"温馨提示：\n1.该游戏为积分制，并且使用积分来开启下一关卡；\n2.每个关卡都有时间限制，请在规定时间内完成任务；\n3.随着关卡的深入，每个关卡的限定时间会越长；\n4.超出限定时间不会影响您当前关卡的游戏，但是最终结算关卡积分时，会扣除一定积分；\n5.扣除的积分超过当前关卡的积分时，会扣除您的总积分。" attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:14.0]}];
    NSMutableAttributedString *viewtext = [[NSMutableAttributedString alloc] initWithAttributedString:signattstr];
    [viewtext appendAttributedString:contextstr];
    UITextView *textview = [[UITextView alloc] initWithFrame:CGRectMake(10, 20, mainsize.width-40, 250)];
    [containerView addSubview:textview];
    textview.attributedText = viewtext;
    textview.userInteractionEnabled = NO;
    
    CGFloat centerX = mainsize.width / 2;
    SSBouncyButton *startBtn = [[SSBouncyButton alloc] initWithFrame:CGRectMake(20, 380, mainsize.width-60, 44)];
    [containerView addSubview:startBtn];
    startBtn.center = CGPointMake(centerX-10, 380 - 50);
    [startBtn setTitle:@"Follow" forState:UIControlStateNormal];
    [startBtn addTarget:self action:@selector(buttonDidPress:) forControlEvents:UIControlEventTouchUpInside];
}
-(void)buttonDidPress:(SSBouncyButton *)sender{
    
}

@end
