//
//  Student.m
//  我的命令行学生管理系统
//
//  Created by 姜凯文 on 2018/8/7.
//  Copyright © 2018年 姜凯文. All rights reserved.
//

#import "Student.h"
#import "StudentSystem.h"

@implementation Student

- (id) init {
    if (self = [super init]) {
        
    }
    return self;
}

- (void) inputStudent {
    NSLog(@"请依次输入学生的姓名, ID, 年龄, 成绩, 年级(格式:崔一鸣 1 4 100 6)");
    char name[20];
    int ID, age, score, grade;
    scanf("%s %d %d %d %d", name, &ID, &age, &score, &grade);
    allGrades += score;
    self.nameString = [[NSString alloc] initWithUTF8String:name];
    self.ID = ID;
    self.age = age;
    self.score = score;
    self.grade = grade;
}

- (void) printStudent {
    NSLog(@"姓名:%@ ID:%d 年龄:%d 成绩:%d 年级:%d", self.nameString, self.ID, self.age, self.score, self.grade);
}
@end
