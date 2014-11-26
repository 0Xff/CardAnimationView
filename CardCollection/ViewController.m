//
//  ViewController.m
//  CardCollection
//
//  Created by zangqilong on 14/11/25.
//  Copyright (c) 2014年 zangqilong. All rights reserved.
//

#import "ViewController.h"
#import "CardCollectionViewCell.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _imageView1.layer.zPosition = 0;
    
    _imageView2.layer.zPosition = 100;
    
    _imageView3.layer.zPosition = 200;
    
    NSArray *arr = @[_imageView3,_imageView2,_imageView1];
    
    CATransform3D perspective = CATransform3DIdentity;
    perspective.m34 = -2.5/2000;
    
    for (int i =0; i<arr.count; i++) {
        UIImageView *img = arr[i];
        img.layer.transform = perspective;
        img.layer.transform = CATransform3DTranslate(img.layer.transform, 0, i*-5, 0);
        img.layer.transform = CATransform3DScale(img.layer.transform, 1-0.1*i, 1, 1);
        img.layer.transform = CATransform3DRotate(img.layer.transform, -1*M_PI/180, 1, 0, 0);
        img.layer.opacity = 1-0.1*i;
        img.layer.cornerRadius = 5;
        img.layer.masksToBounds = YES;
    }
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
