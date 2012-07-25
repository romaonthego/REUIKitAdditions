//
//  UIImageView+REUIKitAdditions.m
//  REUIKitAdditionsExample
//
//  Created by Roman Efimov on 7/24/12.
//  Copyright (c) 2012 Roman Efimov. All rights reserved.
//

#import "UIImageView+REUIKitAdditions.h"

@implementation UIImageView (REUIKitAdditions)

+ (id)imageViewWithImage:(UIImage *)image position:(CGPoint)position
{
    id _imageView = [[[self class] alloc] initWithImage:image];
    UIImageView *imageView = (UIImageView *)_imageView;
    imageView.frame = CGRectMake(position.x, position.y, imageView.image.size.width, imageView.image.size.height);
    return imageView;
}

+ (id)imageViewWithImage:(UIImage *)image x:(CGFloat)x y:(CGFloat)y
{
    return [self imageViewWithImage:image position:CGPointMake(x, y)];
}

+ (id)imageViewWithImageNamed:(NSString *)imageName position:(CGPoint)position
{
    return [self imageViewWithImage:[UIImage imageNamed:imageName] position:position];
}

+ (id)imageViewWithImageNamed:(NSString *)imageName x:(CGFloat)x y:(CGFloat)y
{
    return [self imageViewWithImageNamed:imageName position:CGPointMake(x, y)];
}

@end
