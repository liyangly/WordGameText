//
//  MyTextField.m
//  WordGame
//
//  Created by 李阳 on 16/1/28.
//  Copyright © 2016年 liyang. All rights reserved.
//

#import "MyTextField.h"
#define RGB(r,g,b) [UIColor colorWithRed:(r)/255.0f green:(g)/255.0f blue:(b)/255.0f alpha:1]
@implementation MyTextField

- (instancetype)initWithFrame:(CGRect)frame
{
    return [self initWithFrame:frame
                   cornerRadio:2
                   borderColor:RGB(166, 166, 166)
                   borderWidth:1
                    lightColor:RGB(55, 154, 255)
                     lightSixe:1
              lightBorderColor:RGB(110, 198, 233)];
}
-(id)initWithFrame:(CGRect)frame
       cornerRadio:(CGFloat)radio
       borderColor:(UIColor *)bColor
       borderWidth:(CGFloat)bWidth
        lightColor:(UIColor *)lColor
         lightSixe:(CGFloat)lSixe
  lightBorderColor:(UIColor *)lbColor
{
    self = [super initWithFrame:frame];
    if (self) {
        _borderColor = bColor;
        _cornerRadio = radio;
        _borderWidth = bWidth;
        _borderColor = bColor;
        _lightColor = lColor;
        _lightSize = lSixe;
        _lightBorderColor = lbColor;
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(beginfieldEditing:) name:UITextFieldTextDidBeginEditingNotification object:self];
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(endfieldEditing:) name:UITextFieldTextDidEndEditingNotification object:self];
        [self.layer setCornerRadius:_cornerRadio];
        [self.layer setBorderColor:_borderColor.CGColor];
        [self.layer setBorderWidth:_borderWidth];
        [self setContentVerticalAlignment:UIControlContentVerticalAlignmentCenter];
        [self setBackgroundColor:[UIColor whiteColor]];
        [self.layer setMasksToBounds:NO];
        self.keyboardType = UIKeyboardAppearanceDefault;
        UIView *leftview = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 10, 1)];
        self.leftViewMode = UITextFieldViewModeAlways;
        [self.leftView addSubview:leftview];
    }
    return self;
}
-(void)beginfieldEditing:(NSNotification *)notification{
    [self.layer setShadowOffset:CGSizeMake(0, 0)];
    [self.layer setShadowRadius:_lightSize];
    [self.layer setShadowOpacity:1];
    [self.layer setShadowColor:_lightColor.CGColor];
    [self.layer setBorderColor:_lightBorderColor.CGColor];
}
-(void)endfieldEditing:(NSNotification *)notification{
    [self.layer setShadowOffset:CGSizeMake(0, 0)];
    [self.layer setShadowRadius:0];
    [self.layer setShadowOpacity:0];
    [self.layer setShadowColor:nil];
    [self.layer setBorderColor:_borderColor.CGColor];
}
@end
