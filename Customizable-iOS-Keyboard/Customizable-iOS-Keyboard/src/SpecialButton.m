//
//  SpecialButton.m
//  Bellyflop-Merchant
//
//  Created by Christopher V. Ingebrigtsen on 9/29/11.
//  Copyright 2011 Bellyflop. All rights reserved.
//

#import "SpecialButton.h"


@implementation SpecialButton

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        
        [self addTarget:self action:@selector(buttonPressed) forControlEvents:UIControlEventTouchUpInside];

    }
    return self;
}



-(void)buttonPressed
{

}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

- (void)dealloc
{
    [super dealloc];
}

@end
