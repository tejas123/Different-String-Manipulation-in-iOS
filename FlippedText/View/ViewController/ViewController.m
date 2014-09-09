//
//  ViewController.m
//  FlippedText
//
//  Created by Krupa - iMac on 12/02/14.
//  Copyright (c) 2014 TheAppGuruz. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()

@end

@implementation ViewController

@synthesize tvText;
@synthesize lblFlipped;
@synthesize vwFlipped;


#pragma mark - View LifeCycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    UILabel *lblTitle = [[UILabel alloc] init];
    lblTitle.text = @"Flipped Text";
    lblTitle.font = [UIFont systemFontOfSize:20];
    [lblTitle sizeToFit];
    self.navigationItem.titleView = lblTitle;
    
}

#pragma mark - Action Method

- (IBAction)btnFlipClicked:(id)sender
{
    lblFlipped.layer.transform = CATransform3DMakeRotation(M_PI, 1, 0, 0);
}

- (IBAction)btnRotateClicked:(id)sender
{
    lblFlipped.layer.transform = CATransform3DMakeRotation(M_PI, 0, 0, 1);
}

- (IBAction)btnMirrorClicked:(id)sender
{
    lblFlipped.layer.transform = CATransform3DMakeRotation(M_PI, 0, 1, 0);
}
- (IBAction)btnOriginalClicked:(id)sender
{
    lblFlipped.layer.transform = CATransform3DMakeRotation(M_PI, 0, 0, 0);
}



#pragma mark - TextView Delegate

- (BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text
{
    if([text isEqualToString:@"\n"]) {
        
        [textView resignFirstResponder];
        
        // Add text in lblFlipped
        lblFlipped.text = tvText.text;
        [lblFlipped sizeToFit];
        return NO;
    }
    return YES;
}



#pragma mark - Other Method

#pragma mark - MemoryWarning

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
