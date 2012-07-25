//
//  UIView+REUIKitAdditions.h
//  REUIKitAdditionsExample
//
//  Created by Roman Efimov on 7/24/12.
//  Copyright (c) 2012 Roman Efimov. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (REUIKitAdditions)

- (CGFloat)x;
- (CGFloat)y;
- (CGFloat)width;
- (CGFloat)height;

- (void)setX:(CGFloat)x;
- (void)setY:(CGFloat)y;
- (void)setWidth:(CGFloat)width;
- (void)setHeight:(CGFloat)height;

@end
