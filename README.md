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