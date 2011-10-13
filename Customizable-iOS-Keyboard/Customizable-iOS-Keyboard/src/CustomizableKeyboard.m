//
//  CustomizableKeyboard.m
//  Customizable-iOS-Keyboard
//
//  Created by Christopher V. Ingebrigtsen on 10/7/11.
//  Copyright 2011 All rights reserved.
//

/*
 Permission is hereby granted, free of charge, to any person obtaining a copy
 of this software and associated documentation files (the "Software"), to deal
 in the Software without restriction, including without limitation the rights
 to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 copies of the Software, and to permit persons to whom the Software is
 furnished to do so, subject to the following conditions:
 
 The above copyright notice and this permission notice shall be included in
 all copies or substantial portions of the Software.
 
 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 THE SOFTWARE.
 */
#import "CustomizableKeyboard.h"

enum SPECIAL_KEYS {
    NORMAL_KEY,
    RETURN_KEY,
    BACKSPACE_KEY
    };

@implementation UIView (extraFirstResponderMethod)
- (UIView *)getFirstResponder
{
    if (self.isFirstResponder)        
        return self;     
    
    
    for ( UIView * _pCurView in self.subviews ) 
    {
        UIView * _pFirstResponder = [_pCurView getFirstResponder];
        
        if (_pFirstResponder != nil)
            return _pFirstResponder;
    }
    
    return nil;
}

@end

@implementation CustomizableKeyboard

-(IBAction)buttonPressed:(UIButton*)_pButton
{
    UITextField * _pFirstResponder = [[[UIApplication sharedApplication] keyWindow]getFirstResponder];
    
    if( _pFirstResponder && 
       [_pFirstResponder isKindOfClass:[UITextField class]] )
    {
        switch (_pButton.tag) {
            case RETURN_KEY:
                [_pFirstResponder endEditing:YES];
                break;
                
            case BACKSPACE_KEY:
            {
                 NSMutableString * _pNewText = [NSMutableString stringWithString:_pFirstResponder.text];
                const NSUInteger _Length = [_pNewText length];

                if(_Length)
                {
                    NSRange _DelRange;
                    _DelRange.location = _Length - 1;
                    _DelRange.length = 1;
                    [_pNewText deleteCharactersInRange:_DelRange];
                    
                    _pFirstResponder.text = _pNewText;
                }
                break;
            }   
            default:
                _pFirstResponder.text = [_pFirstResponder.text stringByAppendingString:_pButton.titleLabel.text];
                break;
        }
        
    }
}



@end
