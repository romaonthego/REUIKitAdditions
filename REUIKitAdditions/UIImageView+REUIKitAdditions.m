//
// UIImageView+REUIKitAdditions.m
// REUIKitAdditions
//
// Copyright (c) 2012 Roman Efimov (https://github.com/romaonthego)
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.
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
