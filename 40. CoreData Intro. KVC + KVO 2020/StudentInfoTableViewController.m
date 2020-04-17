//
//  StudentInfoTableViewController.m
//  40. CoreData Intro. KVC + KVO 2020
//
//  Created by Dmitry Marchenko on 4/17/20.
//  Copyright © 2020 Dmitry Marchenko. All rights reserved.
//

#import "StudentInfoTableViewController.h"
#import "Student.h"
#import "DatePickerViewController.h"


@interface StudentInfoTableViewController () <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *firstNameField;
@property (weak, nonatomic) IBOutlet UITextField *lastNameField;
@property (weak, nonatomic) IBOutlet UITextField *dateOfBirthField;
@property (weak, nonatomic) IBOutlet UISegmentedControl *genderControl;
@property (weak, nonatomic) IBOutlet UISlider *gradeSlider;
@property (weak, nonatomic) IBOutlet UILabel *gradeLabel;

@property (strong, nonatomic) Student *student;

@end

@implementation StudentInfoTableViewController

#pragma mark - UIView lifecycle

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.student = [[Student alloc] init];
}


#pragma mark - Actions

- (IBAction)firstNameDidChangeAction:(UITextField *)sender {
    
    self.student.firstName = sender.text;
}

- (IBAction)lastNameDidChangeAction:(UITextField *)sender {
    
    self.student.lastName = sender.text;
}

- (void)textFieldDidBeginEditing:(UITextField *)textField {
    
    
    
}

- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField {
    
    if ([textField isEqual:self.dateOfBirthField]) {
        
        DatePickerViewController *destinationVC = [self.storyboard instantiateViewControllerWithIdentifier:@"DatePickerViewController"];        
        [self presentViewController:destinationVC animated:YES completion:nil];
        
        return NO;
    }
    
    return YES;
}

@end
