//
//  Customizable_iOS_KeyboardAppDelegate.h
//  Customizable-iOS-Keyboard
//
//  Created by Christopher V. Ingebrigtsen on 10/7/11.
//  Copyright 2011 All rights reserved.
//


#import <UIKit/UIKit.h>

@class Customizable_iOS_KeyboardViewController;

@interface Customizable_iOS_KeyboardAppDelegate : NSObject <UIApplicationDelegate> {

}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet Customizable_iOS_KeyboardViewController *viewController;

@end
