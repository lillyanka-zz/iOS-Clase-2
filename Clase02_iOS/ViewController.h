//
//  ViewController.h
//  Clase02_iOS
//
//  Created by Maikol Araya on 1/29/14.
//  Copyright (c) 2014 La Creativeria. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    NSArray *phrases;
}


@property (strong, nonatomic) IBOutlet UIImageView *backgroundImageView;
@property (strong, nonatomic) IBOutlet UILabel *lbl_prediction;
- (IBAction)btn_prediction:(id)sender;
- (IBAction)btn_go:(id)sender;



@end
