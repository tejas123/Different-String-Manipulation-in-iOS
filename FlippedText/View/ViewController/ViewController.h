//
//  ViewController.h
//  FlippedText
//
//  Created by Krupa - iMac on 12/02/14.
//  Copyright (c) 2014 TheAppGuruz. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITextViewDelegate>

@property (nonatomic,strong) IBOutlet UITextView *tvText;
@property (nonatomic,strong) IBOutlet UILabel *lblFlipped;
@property (nonatomic,strong) IBOutlet UIView *vwFlipped;


@end
