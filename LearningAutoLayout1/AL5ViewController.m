//
//  AL5ViewController.m
//  LearningAutoLayout1
//
//  Created by Lauren Hybinette on 2/5/14.
//  Copyright (c) 2014 Lauren Hybinette. All rights reserved.
//

#import "AL5ViewController.h"

@interface AL5ViewController ()

@end

@implementation AL5ViewController {
    UIButton *button;
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    button = [UIButton buttonWithType:UIButtonTypeSystem]; button.backgroundColor = [UIColor greenColor];
    [button setTitle:@"Button 1" forState:UIControlStateNormal]; [button sizeToFit];
    button.translatesAutoresizingMaskIntoConstraints = NO;
    
    [self.view addSubview:button];
    
    NSLayoutConstraint *constraint = [NSLayoutConstraint constraintWithItem:button
                                                                  attribute:NSLayoutAttributeRight
                                                                  relatedBy:NSLayoutRelationEqual
                                                                     toItem:self.view
                                                                  attribute:NSLayoutAttributeRight
                                                                 multiplier:1.0f
                                                                   constant:-20.0f];
    [self.view addConstraint:constraint];
    
    constraint = [NSLayoutConstraint constraintWithItem:button
                                              attribute:NSLayoutAttributeBottom
                                              relatedBy:NSLayoutRelationEqual
                                                 toItem:self.view attribute:NSLayoutAttributeBottom
                                             multiplier:1.0f
                                               constant:-20.0f];
    [self.view addConstraint:constraint];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
