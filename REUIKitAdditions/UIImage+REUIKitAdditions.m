//
// UIImage+REUIKitAdditions.m
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

#import "UIImage+REUIKitAdditions.h"
#import <objc/runtime.h>
#import <objc/message.h>

static Method origImageNamedMethod = nil;

@implementation UIImage (REUIKitAdditions)

+ (void)initialize
{
    origImageNamedMethod = class_getClassMethod(self, @selector(imageNamed:));
    method_exchangeImplementations(origImageNamedMethod,
                                   class_getClassMethod(self, @selector(retina4ImageNamed:)));
}

//  Created by Benjamin Stahlhood on 9/12/12.
//  Copyright (c) 2012 DS Media Labs. All rights reserved.
+ (UIImage *)retina4ImageNamed:(NSString *)imageName
{
    NSMutableString *imageNameMutable = [imageName mutableCopy];
    NSRange retinaAtSymbol = [imageName rangeOfString:@"@"];
    if (retinaAtSymbol.location != NSNotFound) {
        [imageNameMutable insertString:@"-568h" atIndex:retinaAtSymbol.location];
    } else {
        CGFloat screenHeight = [UIScreen mainScreen].bounds.size.height;
        if ([UIScreen mainScreen].scale == 2.f && screenHeight == 568.0f) {
            NSRange dot = [imageName rangeOfString:@"."];
            if (dot.location != NSNotFound) {
                [imageNameMutable insertString:@"-568h@2x" atIndex:dot.location];
            } else {
                [imageNameMutable appendString:@"-568h@2x"];
            }
        }
    }
    NSString *imagePath = [[NSBundle mainBundle] pathForResource:imageNameMutable ofType:@"png"];
    if (imagePath) {
        return [UIImage retina4ImageNamed:imageNameMutable];
    } else {
        return [UIImage retina4ImageNamed:imageName];
    }
    return nil;
}

+ (UIImage *)maskedImageNamed:(NSString *)name color:(UIColor *)color
{
	UIImage *image = [UIImage imageNamed:name];
	CGRect rect = CGRectMake(0, 0, image.size.width, image.size.height);
	UIGraphicsBeginImageContextWithOptions(rect.size, NO, image.scale);
	CGContextRef context = UIGraphicsGetCurrentContext();
	[image drawInRect:rect];
	CGContextSetFillColorWithColor(context, [color CGColor]);
	CGContextSetBlendMode(context, kCGBlendModeSourceAtop);
	CGContextFillRect(context, rect);
	UIImage *result = UIGraphicsGetImageFromCurrentImageContext();
	UIGraphicsEndImageContext();
	return result;
}

// Modified code from:
// http://www.gotow.net/creative/wordpress/?p=7
//
CGImageRef CreateSquareCGImageFromCGImage(CGImageRef image, int size, BOOL zoomIn)
{
    // Create the bitmap context
    CGContextRef    context = NULL;
    void *          bitmapData;
    int             bitmapByteCount;
    int             bitmapBytesPerRow;
    
    int imageWidth = CGImageGetWidth(image);
    int imageHeight = CGImageGetHeight(image);
    
    float biggestNumber = zoomIn ? MIN(imageWidth, imageHeight) : MAX(imageWidth, imageHeight);
    float coef = size / biggestNumber;
    
    imageWidth = imageWidth * coef;
    imageHeight = imageHeight * coef;
    
    int width = zoomIn ? imageWidth : (imageWidth >= size ? size : imageWidth);
    int height = zoomIn ? imageHeight : (imageHeight >= size ? size : imageHeight);
    
    // Declare the number of bytes per row. Each pixel in the bitmap in this
    // example is represented by 4 bytes; 8 bits each of red, green, blue, and
    // alpha.
    bitmapBytesPerRow   = (size * 4);
    bitmapByteCount     = (bitmapBytesPerRow * size);
    
    // Allocate memory for image data. This is the destination in memory
    // where any drawing to the bitmap context will be rendered.
    bitmapData = malloc( bitmapByteCount );
    if (bitmapData == NULL) {
        return nil;
    }
    
    // Create the bitmap context. We want pre-multiplied ARGB, 8-bits
    // per component. Regardless of what the source image format is
    // (CMYK, Grayscale, and so on) it will be converted over to the format
    // specified here by CGBitmapContextCreate.
    CGColorSpaceRef colorspace = CGImageGetColorSpace(image);
    context = CGBitmapContextCreate (bitmapData,size,size,8,bitmapBytesPerRow,
                                     colorspace,kCGImageAlphaNoneSkipFirst);
    CGColorSpaceRelease(colorspace);
    
    if (context == NULL)
        // error creating context
        return nil;
    
    // Draw the image to the bitmap context. Once we draw, the memory
    // allocated for the context for rendering will then contain the
    // raw image data in the specified color space.
    CGContextSetInterpolationQuality(context, kCGInterpolationHigh);
    
    CGContextDrawImage(context, CGRectMake((size - imageWidth) / 2, (size - imageHeight) / 2, width, height), image);
    
    CGImageRef imgRef = CGBitmapContextCreateImage(context);
    CGContextRelease(context);
    free(bitmapData);
    
    return imgRef;
}

+ (UIImage *)squareImageWithImage:(UIImage *)image size:(NSInteger)size
{
    return [UIImage imageWithCGImage:CreateSquareCGImageFromCGImage(image.CGImage, size, NO) scale:image.scale orientation:image.imageOrientation];
}

+ (UIImage *)squareImageWithImage:(UIImage *)image size:(NSInteger)size scale:(CGFloat)scale
{
    return [UIImage imageWithCGImage:CreateSquareCGImageFromCGImage(image.CGImage, size, NO) scale:scale orientation:image.imageOrientation];
}

+ (UIImage *)squareImageWithImage:(UIImage *)image size:(NSInteger)size scale:(CGFloat)scale zoomIn:(BOOL)zoomIn
{
    return [UIImage imageWithCGImage:CreateSquareCGImageFromCGImage(image.CGImage, size, zoomIn) scale:scale orientation:image.imageOrientation];
}

@end
