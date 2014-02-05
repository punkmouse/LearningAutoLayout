//
//  AL4ViewController.m
//  LearningAutoLayout1
//
//  Created by Lauren Hybinette on 2/5/14.
//  Copyright (c) 2014 Lauren Hybinette. All rights reserved.
//

#import "AL4ViewController.h"

@interface AL4ViewController ()

@end

@implementation AL4ViewController

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
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)nextButtonTapped:(id)sender
{
    static NSArray *breweries;
    if (breweries == nil) {
        breweries = @[@"2Kids Brewing Company", @"A Pint or Two", @"Adelbert's Brewery LLC", @"Anderson Valley Brewing Co", @"Arvada Beer Company"];
    }
    static int index = 0;
    self.breweryNameLabel.text = breweries[index % 5];
    
    static NSArray *cities;
    
    if (cities == nil) {
        cities =@[@"San Diego", @"Bisbee", @"Austin", @"Boonville", @"Arvada"];
    }
    
    self.cityNameLabel.text = cities [index % 5];
    
    static NSArray *discounts;
    
    if (discounts == nil) {
        discounts = @[@"$1 Off Any Pint", @"5% Off Merchandise", @"$2 Off Tours & $2 Off T-Shirt Purchases", @"Half Off Pints (Core & Seasonal Only)", @"10% Off Merchandise & Beer To Go"];
    }
    
    self.discountLabel.text = discounts [index % 5];
    
    index ++;
}

@end
    