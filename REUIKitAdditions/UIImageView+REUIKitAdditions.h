//
// UIImageView+REUIKitAdditions.h
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

#import <UIKit/UIKit.h>

@interface UIImageView (REUIKitAdditions)

/** Returns an image view initialized with the specified image and position

 @param image Image object.
 @param position Image position.
 @return Returns an image view
 */
+ (id)imageViewWithImage:(UIImage *)image position:(CGPoint)position;

/** Returns an image view initialized with the specified image and position

 @param image Image object.
 @param x Image X position.
 @param y Image Y position.
 @return Returns an image view
 */
+ (id)imageViewWithImage:(UIImage *)image x:(CGFloat)x y:(CGFloat)y;

/** Returns an image view initialized with the specified image and position

 @param imageName The name of the file. If this is the first time the image is being loaded, the method looks for an image with the specified name in the application’s main bundle..
 @param position Image position.
 @return Returns an image view
 */
+ (id)imageViewWithImageNamed:(NSString *)imageName position:(CGPoint)position;

/** Returns an image view initialized with the specified image and position

 @param imageName The name of the file. If this is the first time the image is being loaded, the method looks for an image with the specified name in the application’s main bundle..
 @param x Image X position.
 @param y Image Y position.
 @return Returns an image view
 */
+ (id)imageViewWithImageNamed:(NSString *)imageName x:(CGFloat)x y:(CGFloat)y;

@end
