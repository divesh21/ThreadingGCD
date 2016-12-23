//
//  ViewController.h
//  ThreadingGCD
//
//  Created by student14 on 23/12/16.
//  Copyright © 2016 Felix-ITs-Divesh. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

- (IBAction)download:(id)sender;


@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *indicator;


@property (weak, nonatomic) IBOutlet UIImageView *imageView;



@property(nonatomic,retain) dispatch_queue_t queue;

@end

