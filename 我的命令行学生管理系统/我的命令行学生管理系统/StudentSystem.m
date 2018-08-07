//
//  StudentSystem.m
//  我的命令行学生管理系统
//
//  Created by 姜凯文 on 2018/8/7.
//  Copyright © 2018年 姜凯文. All rights reserved.
//

#import "StudentSystem.h"

@implementation StudentSystem

- (id) init {
    if (self = [super init]) {
        _studentArray = [[NSMutableArray alloc] init];
    }
    else {
        self = nil;
    }
    return self;
}

- (void) printStudentArray {
    for (Student *student in _studentArray) {
        [student printStudent];
    }
    NSLog(@"OK");
}
- (void) addStudentArray {
    int ID;
    NSLog(@"请输入学海");
    scanf("%d", &ID);
    for (Student *student in _studentArray) {
        if (student.ID == ID) {
            NSLog(@"Wrong!");
            return ;
        }
    }
    Student *tempStudent = [[Student alloc] init];
    [tempStudent inputStudent];
    [_studentArray addObject:tempStudent];
    NSLog(@"OK");
}
- (void) findStudentByStudentID {
    int ID;
    NSLog(@"请输入学海");
    scanf("%d", &ID);
    for (Student *student in _studentArray) {
        if (student.ID == ID) {
            [student printStudent];
            return ;
        }
    }
    NSLog(@"Wrong!");
}
- (void) removeStudentByStudentID {
    int ID;
    NSLog(@"请输入学海");
    scanf("%d", &ID);
    for (Student *student in _studentArray) {
        if (student.ID == ID) {
            [_studentArray removeObject:student];
            [student printStudent];
            return ;
        }
    }
    NSLog(@"Wrong!");
}
- (void) modifierStudentByStudentID {
    int ID;
    NSLog(@"请输入学海");
    scanf("%d", &ID);
    for (Student *student in _studentArray) {
        if (student.ID == ID) {
            [student inputStudent];
            return;
        }
    }
    NSLog(@"Wrong!");
}

@end
