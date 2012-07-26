//
//  UIImageView+REUIKitAdditions.h
//  REUIKitAdditionsExample
//
//  Created by Roman Efimov on 7/24/12.
//  Copyright (c) 2012 Roman Efimov. All rights reserved.
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
