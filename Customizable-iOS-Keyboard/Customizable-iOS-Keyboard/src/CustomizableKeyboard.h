//
//  CustomizableKeyboard.h
//  Customizable-iOS-Keyboard
//
//  Created by Christopher V. Ingebrigtsen on 10/7/11.
//  Copyright 2011 All rights reserved.
//

#import <UIKit/UIKit.h>

@class SpecialButton;

@interface CustomizableKeyboard : UIViewController {
    
    UITextField * m_pFirstResponder;
}

-(IBAction)buttonPressed:(UIButton*)_pButton;

@end
