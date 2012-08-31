# REUIKitAdditions

Category additions to UIKit, under development.

## Requirements
* Xcode 4.4 or higher
* Apple LLVM compiler
* iOS 5 or higher
* ARC

If you are not using ARC in your project, add `-fobjc-arc` as a compiler flag for all the files in this project.

## Additions

### NSObject

Sending Messages

```objective-c
- (void)performBlock:(void (^)(void))block afterDelay:(NSTimeInterval)delay;
```

### UIView

Animating Views with Blocks

```objective-c
+ (void)animateWithDuration:(NSTimeInterval)duration options:(UIViewAnimationOptions)options animations:(void (^)(void))animations;
+ (void)animateWithDuration:(NSTimeInterval)duration options:(UIViewAnimationOptions)options animations:(void (^)(void))animations completion:(void (^)(BOOL finished))completion;
```

Configuring the Bounds and Frame Rectangles

```objective-c
@property (nonatomic, readwrite) CGFloat x;
@property (nonatomic, readwrite) CGFloat y;
@property (nonatomic, readwrite) CGFloat width;
@property (nonatomic, readwrite) CGFloat height;
```

Managing the View Hierarchy

```objective-c
- (void)removeAllSubviews;
```

### UIImage

Image Loading Routines

```objective-c
+ (UIImage *)maskedImageNamed:(NSString *)name color:(UIColor *)color;
+ (UIImage *)squareImageWithImage:(UIImage *)image size:(NSInteger)size;
+ (UIImage *)squareImageWithImage:(UIImage *)image size:(int)size scale:(CGFloat)scale;
```

### UIImageView

Initializing a UIImageView Object

```objective-c
+ (id)imageViewWithImage:(UIImage *)image position:(CGPoint)position;
+ (id)imageViewWithImage:(UIImage *)image x:(CGFloat)x y:(CGFloat)y;
+ (id)imageViewWithImageNamed:(NSString *)imageName position:(CGPoint)position;
+ (id)imageViewWithImageNamed:(NSString *)imageName x:(CGFloat)x y:(CGFloat)y;
```

### UIColor

Creating a UIColor Object from Component Values

```objective-c
+ (UIColor *)colorWithRGBHex:(UInt32)hex;
+ (UIColor *)colorWithRGBHex:(UInt32)hex alpha:(CGFloat)alpha;
```

### UIControl

Preparing and Sending Action Messages

```objective-c
- (void)setBlock:(void (^)(void))block forControlEvents:(UIControlEvents)event;
```

## Macros

```objective-c
RGB(rgbValue)
RGBA(rgbValue, a)
RGB2(r, g, b)
RGBA2(r, g, b, a)
```

## Contact

Roman Efimov

- https://github.com/romaonthego
- https://twitter.com/romaonthego

## License

REUIKitAdditions is available under the MIT license.

Copyright © 2012 Roman Efimov.

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
