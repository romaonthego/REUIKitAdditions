# REUIKitAdditions

Category additions to UIKit, under development.

## Requirements
* Xcode 4.4 or higher
* Apple LLVM compiler
* iOS 5 or higher
* ARC

If you are not using ARC in your project, add `-fobjc-arc` as a compiler flag for all the files in this project.

## UIView

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

## UIImageView

Initializing a UIImageView Object

```objective-c
+ (id)imageViewWithImage:(UIImage *)image position:(CGPoint)position;
+ (id)imageViewWithImage:(UIImage *)image x:(CGFloat)x y:(CGFloat)y;
+ (id)imageViewWithImageNamed:(NSString *)imageName position:(CGPoint)position;
+ (id)imageViewWithImageNamed:(NSString *)imageName x:(CGFloat)x y:(CGFloat)y;
```

## UIColor

Creating a UIColor Object from Component Values

```objective-c
+ (UIColor *)colorWithRGBHex:(UInt32)hex;
+ (UIColor *)colorWithRGBHex:(UInt32)hex alpha:(CGFloat)alpha;
```