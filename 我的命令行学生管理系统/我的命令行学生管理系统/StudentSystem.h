//
//  StudentSystem.h
//  我的命令行学生管理系统
//
//  Created by 姜凯文 on 2018/8/7.
//  Copyright © 2018年 姜凯文. All rights reserved.
//
int allGrades = 0;
#import <Foundation/Foundation.h>
#import "Student.h"
extern int allGrades;

@interface StudentSystem : NSObject
@property NSMutableArray *studentArray;

- (void) printStudentArray;
- (void) addStudentArray;
- (void) findStudentByStudentID;
- (void) removeStudentByStudentID;
- (void) modifierStudentByStudentID;


@end
