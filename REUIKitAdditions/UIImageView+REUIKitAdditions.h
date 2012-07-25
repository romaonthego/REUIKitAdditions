//
//  UIImageView+REUIKitAdditions.h
//  REUIKitAdditionsExample
//
//  Created by Roman Efimov on 7/24/12.
//  Copyright (c) 2012 Roman Efimov. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImageView (REUIKitAdditions)

+ (id)imageViewWithImage:(UIImage *)image position:(CGPoint)position;
+ (id)imageViewWithImage:(UIImage *)image x:(CGFloat)x y:(CGFloat)y;
+ (id)imageViewWithImageNamed:(NSString *)imageName position:(CGPoint)position;
+ (id)imageViewWithImageNamed:(NSString *)imageName x:(CGFloat)x y:(CGFloat)y;

@end
