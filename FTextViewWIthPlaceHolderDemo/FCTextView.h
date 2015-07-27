//
//  FCTextView.h
//  FTextViewWIthPlaceHolderDemo
//
//  Created by zhisheshe on 15/7/27.
//  Copyright (c) 2015年 fcihpy. All rights reserved.
//  带有PlaceHolder的textView

#import <UIKit/UIKit.h>

@interface FCTextView : UITextView

/**
 *  占位文字
 */
@property (nonatomic,copy) NSString *placeholder;


/**
*  占位文字的颜色
*/
@property (nonatomic,strong) UIColor *placeholderColor;


@end
