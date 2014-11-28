//
//  PanViewController.h
//  GestureDemo
//
//  Created by enterpi on 8/26/14.
//  Copyright (c) 2014 enterpi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PanViewController : UIViewController
@property(weak,nonatomic)IBOutlet UIView *testView;
@property(weak,nonatomic)IBOutlet UILabel *horizontalVelocitylabel;
@property(nonatomic,weak)IBOutlet UILabel *verticalVelocityLabel;

@end
