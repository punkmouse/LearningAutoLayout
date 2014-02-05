//
//  ALViewController.m
//  LearningAutoLayout1
//
//  Created by Lauren Hybinette on 1/27/14.
//  Copyright (c) 2014 Lauren Hybinette. All rights reserved.
//

#import "ALViewController.h"

@interface ALViewController ()

@end

@implementation ALViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)buttonTapped:(UIButton *)sender
{
    if ([[sender titleForState:UIControlStateNormal] isEqualToString:@"X"])
    {
        [sender setTitle:@"A very long title for this button"
                forState:UIControlStateNormal];
    
    } else {
        [sender setTitle:@"X" forState:UIControlStateNormal];
    }
}

@end
