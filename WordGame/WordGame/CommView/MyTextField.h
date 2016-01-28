//
//  MyTextField.h
//  WordGame
//
//  Created by 李阳 on 16/1/28.
//  Copyright © 2016年 liyang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyTextField : UITextField
{
    CGFloat _cornerRadio;
    UIColor *_borderColor;
    CGFloat _borderWidth;
    UIColor *_lightColor;
    CGFloat _lightSize;
    UIColor *_lightBorderColor;
}
-(id)initWithFrame:(CGRect)frame
       cornerRadio:(CGFloat)radio
       borderColor:(UIColor *)bColor
       borderWidth:(CGFloat)bWidth
        lightColor:(UIColor *)lColor
         lightSixe:(CGFloat)lSixe
  lightBorderColor:(UIColor *)lbColor;
@end
