//
//  Teacher.h
//  CoreData
//
//  Created by 范琦 on 15/10/26.
//  Copyright (c) 2015年 范琦. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Teacher : NSManagedObject

@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSString * sex;
@property (nonatomic, retain) NSString * teacher;
@property (nonatomic, retain) NSString * hobby;

@end
