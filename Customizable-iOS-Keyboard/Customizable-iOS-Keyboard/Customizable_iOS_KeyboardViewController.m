//
//  Customizable_iOS_KeyboardViewController.m
//  Customizable-iOS-Keyboard
//
//  Created by Christopher V. Ingebrigtsen on 10/7/11.
//  Copyright 2011 Bellyflop. All rights reserved.
//

#import "Customizable_iOS_KeyboardViewController.h"
#import "CustomizableKeyboard.h"
@implementation Customizable_iOS_KeyboardViewController
@synthesize TextField = m_pTextField;

- (void)dealloc
{
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self->m_pKeyboard = [[CustomizableKeyboard alloc]initWithNibName:@"CustomizableKeyboard" bundle:nil];
    [self->m_pTextField setInputView:self->m_pKeyboard.view];
}



- (void)viewDidUnload
{
    self.TextField = nil;
    self->m_pKeyboard = nil;
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return YES;
}

@end
