//
//  ViewController.m
//  ThreadingGCD
//
//  Created by student14 on 23/12/16.
//  Copyright © 2016 Felix-ITs-Divesh. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    _queue = dispatch_queue_create("queue", DISPATCH_QUEUE_CONCURRENT);
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)download:(id)sender {
    
    
    //NSString *str=@"http://img1.sendscraps.com/se/042/004.jpg";
    NSString *str=@"http://i.amz.mshcdn.com/4_hZQ53P0UDTE59mWHJbjSKpbcQ=/fit-in/1200x9600/https%3A%2F%2Fblueprint-api-production.s3.amazonaws.com%2Fuploads%2Fcard%2Fimage%2F176280%2FGettyImages-588139672.jpg";
    [_indicator startAnimating];
    
//    dispatch_async(_queue, ^{
//    
//        NSURL *url =[NSURL URLWithString:str];
//        NSData *data=[NSData dataWithContentsOfURL:url];
//        UIImage *img=[UIImage imageWithData:data];
//        
//        dispatch_async(dispatch_get_main_queue(), ^{
//        
//            _imageView.image=img;
//            [_indicator stopAnimating];
//        
//        });
//    
//    });
    
    
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 0), ^{
    
                NSURL *url =[NSURL URLWithString:str];
                NSData *data=[NSData dataWithContentsOfURL:url];
                UIImage *img=[UIImage imageWithData:data];
    
        
        dispatch_async(dispatch_get_main_queue(), ^{
            
                        _imageView.image=img;
                        [_indicator stopAnimating];
                    
                    });
    
    });
    
}
@end
