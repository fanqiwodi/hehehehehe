//
//  ViewController.m
//  CoreData
//
//  Created by 范琦 on 15/10/25.
//  Copyright (c) 2015年 范琦. All rights reserved.
//

#import "ViewController.h"
#import "Teacher.h"
#import "AppDelegate.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    AppDelegate *app = [UIApplication sharedApplication].delegate;
    self.managerContext = [app managedObjectContext];
    self.arr = [NSMutableArray array];
    

    
    
    
}
- (IBAction)add:(id)sender {
    
    Teacher *teacher = [NSEntityDescription insertNewObjectForEntityForName:@"Teacher" inManagedObjectContext:self.managerContext];
    teacher.name = @"fd";
    teacher.sex = @"nv";
    teacher.teacher = @"数学";
    teacher.hobby = @"篮球";
    [self.arr addObject:teacher];
    [self.managerContext save:nil];
}
- (IBAction)delete:(id)sender {
    if (self.arr.count != 0) {
        
    
    NSManagedObject *teacher = [self.arr lastObject];
    
    [_managerContext deleteObject:teacher];
    [self.managerContext save:nil];
        
    }
    
    
}


- (IBAction)change:(id)sender {
}
- (IBAction)search:(id)sender {
    
    
    
    NSFetchRequest *request = [NSFetchRequest fetchRequestWithEntityName:@"Teacher"];
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"name CONTAINS 'fd'"];
    request.predicate = predicate;
    
    NSSortDescriptor *sort = [NSSortDescriptor sortDescriptorWithKey:@"name" ascending:YES];
    request.sortDescriptors = @[sort];
    
    
    NSArray *arr = [self.managerContext executeFetchRequest:request error:nil];
    NSLog(@"%@", arr);
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
