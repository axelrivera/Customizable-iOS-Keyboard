//
//  CustomizableKeyboard.m
//  Customizable-iOS-Keyboard
//
//  Created by Christopher V. Ingebrigtsen on 10/7/11.
//  Copyright 2011 Bellyflop. All rights reserved.
//

#import "CustomizableKeyboard.h"
#import "SpecialButton.h"

@implementation UIView (FindFirstResponder)
- (UIView *)findFirstResponder
{
    if (self.isFirstResponder) {        
        return self;     
    }
    
    for (UIView *subView in self.subviews) {
        UIView *firstResponder = [subView findFirstResponder];
        
        if (firstResponder != nil) {
            return firstResponder;
        }
    }
    
    return nil;
}
@end

@implementation CustomizableKeyboard

-(IBAction)buttonPressed:(SpecialButton*)_pButton
{
    UITextField * _pFirstResponder = [[[UIApplication sharedApplication] keyWindow]findFirstResponder];
    
    if([_pFirstResponder isFirstResponder] && [_pFirstResponder isKindOfClass:[UITextField class]])
    {
        _pFirstResponder.text = [_pFirstResponder.text stringByAppendingString:_pButton.titleLabel.text];
    }
}



@end
