//
//  Customizable_iOS_KeyboardViewController.h
//  Customizable-iOS-Keyboard
//
//  Created by Christopher V. Ingebrigtsen on 10/7/11.
//  Copyright 2011  All rights reserved.
//

#import <UIKit/UIKit.h>

@class CustomizableKeyboard;

@interface Customizable_iOS_KeyboardViewController : UIViewController {
    CustomizableKeyboard * m_pKeyboard;
    UITextField * m_pTextField;
}

@property (nonatomic,retain) IBOutlet UITextField * TextField;
@end
