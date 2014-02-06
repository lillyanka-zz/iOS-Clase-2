//
//  ViewController.m
//  Clase02_iOS
//
//  Created by Maikol Araya on 1/29/14.
//  Copyright (c) 2014 La Creativeria. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    phrases = [[NSArray alloc] initWithObjects:@"Si",@"No",@"Talvez", nil];
    
	// Do any additional setup after loading the view, typically from a nib.
    
//    self.backgroundImageView.animationImages = [[NSArray alloc] initWithObjects:
//                        [UIImage imageNamed:@"CB00001"],
//                        [UIImage imageNamed:@"CB00002"],
//                        [UIImage imageNamed:@"CB00003"],
//                        [UIImage imageNamed:@"CB00004"],
//                        [UIImage imageNamed:@"CB00005"],
//                        [UIImage  imageNamed:@"CB00006"],nil];
    
    NSMutableArray *arrayImages = [[NSMutableArray alloc] init];
    
    for (int i = 1; i <= 60; i++) {
        UIImage *newImage = [UIImage imageNamed:[NSString stringWithFormat:@"CB%05d",i]];
        [arrayImages addObject:newImage];
    }
    
    self.backgroundImageView.animationImages = arrayImages;
    self.backgroundImageView.animationDuration = 2.5f;
    self.backgroundImageView.animationRepeatCount = 1;
    
    
    
    //CB%05d
    //CB00002
}

-(NSString*) makeRandomPrediction {
    int random = arc4random_uniform(phrases.count);
    return [phrases objectAtIndex:random];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btn_prediction:(id)sender {
    self.lbl_prediction.alpha = 0.0f;
    [self.backgroundImageView startAnimating];
    self.lbl_prediction.text = [self makeRandomPrediction];
    
    [UIView animateWithDuration:9.0 animations:^{
        self.lbl_prediction.alpha = 1.0f;
    }];
}

- (IBAction)btn_go:(id)sender {
    
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    SecondViewController *secondView = [storyboard instantiateViewControllerWithIdentifier:@"SecondView"];
    secondView.contentLabel = self.userEnterText.text;
    [self.navigationController pushViewController:secondView animated:YES];
    
}

- (IBAction)userEnterText:(id)sender {
}

















@end















