//
//  Student.h
//  40. CoreData Intro. KVC + KVO 2020
//
//  Created by Dmitry Marchenko on 4/17/20.
//  Copyright © 2020 Dmitry Marchenko. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef enum {
    StudentGenderMan,
    StudentGenderWoman
} StudentGender;

@interface Student : NSObject

@property (strong, nonatomic) NSString *firstName;
@property (strong, nonatomic) NSString *lastName;
@property (strong, nonatomic) NSDate *dateOfBirth;
@property (assign, nonatomic) StudentGender gender;
@property (assign, nonatomic) float grade;

@end

NS_ASSUME_NONNULL_END
