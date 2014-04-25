//
//  CourseViewController.h
//  GeoGolf
//
//  Created by cj on 12/14/13.
//  Copyright (c) 2013 KickinEspresso. All rights reserved.
//

#import <UIKit/UIKit.h>
@class CourseViewController;

@protocol CourseViewControllerDelegate
- (void)courseViewControllerDidFinish:(CourseViewController *)controller;
@end


@interface CourseViewController : UIViewController

@property (weak, nonatomic) id <CourseViewControllerDelegate> delegate;

- (IBAction)doneAction:(id)sender;

@end
