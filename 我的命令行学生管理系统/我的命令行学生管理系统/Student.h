//
//  Student.h
//  我的命令行学生管理系统
//
//  Created by 姜凯文 on 2018/8/7.
//  Copyright © 2018年 姜凯文. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Student : NSObject 

@property (nonatomic, copy) NSString *nameString;
@property (nonatomic, assign) int ID;
@property (nonatomic, assign) int score;
@property (nonatomic, assign) int grade;
@property (nonatomic, assign) int age;


-(void)inputStudent;
-(void)printStudent;
@end
