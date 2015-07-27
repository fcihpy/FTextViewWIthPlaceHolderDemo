//
//  FCTextView.m
//  FTextViewWIthPlaceHolderDemo
//
//  Created by zhisheshe on 15/7/27.
//  Copyright (c) 2015年 fcihpy. All rights reserved.
//

#import "FCTextView.h"

@implementation FCTextView

- (instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        
        // 当UITextView的文字发生改变时，UITextView自己会发出一个UITextViewTextDidChangeNotification通知
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(textDidChange) name:UITextViewTextDidChangeNotification object:self];
        
        self.clearsOnInsertion = YES;
        self.clearsContextBeforeDrawing = YES;
        
    }
    return self;
}


- (void)drawRect:(CGRect)rect{
    
    //如果有输入文字，就直接返回，不画占位文字
    if (self.hasText) return;
    
    //设置文字属性
    NSDictionary *attrs = @{
                            NSFontAttributeName : self.font,
                            NSForegroundColorAttributeName :self.placeholderColor?self.placeholderColor:[UIColor grayColor]
                            
                            };
    

    //画文字
    CGFloat x = 5;
    CGFloat w = rect.size.width - 2 *x;
    CGFloat y = 8;
    CGFloat h = rect.size.height - 2 *8;
    CGRect placeholderRect = CGRectMake(x,y, w, h);
    
    [self.placeholder drawInRect:placeholderRect withAttributes:attrs];
    
}


/**
 * 监听文字改变
 */
- (void)textDidChange{
    
    // 重绘（重新调用）
    [self setNeedsDisplay];
    
}

- (void)setPlaceholder:(NSString *)placeholder{
    
    _placeholder = [placeholder copy];
    [self setNeedsDisplay];
    
}

- (void)setPlaceholderColor:(UIColor *)placeholderColor{
    
    _placeholderColor = placeholderColor;
    [self setNeedsDisplay];
    
}

- (void)setText:(NSString *)text{
    
    [super setText:text];
    [self setNeedsDisplay];
    
}


- (void)setAttributedText:(NSAttributedString *)attributedText{
    
    [super setAttributedText:attributedText];
    [self setNeedsDisplay];
    
}

- (void)setFont:(UIFont *)font{
    
    [super setFont:font];
    if (font) {
        [self setNeedsDisplay];
    }
    
}


- (void)dealloc{
    
    [[NSNotificationCenter defaultCenter] removeObserver:self];
    
}
@end
