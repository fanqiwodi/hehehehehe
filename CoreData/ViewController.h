//
//  ViewController.h
//  CoreData
//
//  Created by 范琦 on 15/10/25.
//  Copyright (c) 2015年 范琦. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (nonatomic, retain) NSManagedObjectContext *managerContext;

@property (nonatomic, strong) NSMutableArray *arr;

@end

