//
//  PanViewController.m
//  GestureDemo
//
//  Created by enterpi on 8/26/14.
//  Copyright (c) 2014 enterpi. All rights reserved.
//

#import "PanViewController.h"

@interface PanViewController ()
-(void)moveViewWithGestureRecognizer:(UIPanGestureRecognizer *)panGestureRecognizer;


@end

@implementation PanViewController

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
    UIPanGestureRecognizer *panGestureRecognizer = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(moveViewWithGestureRecognizer:)];
    [self.testView addGestureRecognizer:panGestureRecognizer];

    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)moveViewWithGestureRecognizer:(UIPanGestureRecognizer *)panGestureRecognizer;
{
    CGPoint touchLocation = [panGestureRecognizer locationInView:self.view];
    self.testView.center = touchLocation;
    CGPoint velocity = [panGestureRecognizer velocityInView:self.view];
    
    self.horizontalVelocitylabel.text = [NSString stringWithFormat:@"Horizontal Velocity: %.2f points/sec", velocity.x];
    self.verticalVelocityLabel.text = [NSString stringWithFormat:@"Vertical Velocity: %.2f points/sec", velocity.y];


    
}































/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
