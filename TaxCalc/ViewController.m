//
//  ViewController.m
//  TaxCalc
//
//  Created by Andrew Chen on 1/6/16.
//  Copyright © 2016 Andrew Chen. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *priceTextField;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentedControl;
@property double caTax;
@property double nyTax;
@property double chiTax;
@property (weak, nonatomic) IBOutlet UILabel *resultLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.caTax = 0.075;
    self.nyTax  = 0.045;
    self.chiTax = 0.0925;
}

- (IBAction)onCalculateButtonTapped:(id)sender {
    NSString * Value = self.priceTextField.text;
    double enteredValue = Value.intValue;
    
    if (self.segmentedControl.selectedSegmentIndex == 0) {
        double result = enteredValue * self.caTax;
        self.resultLabel.text = [NSString stringWithFormat: @"%.2f", result];
    }
    else if (self.segmentedControl.selectedSegmentIndex == 1) {
        double result = enteredValue * self.chiTax;
        self.resultLabel.text = [NSString stringWithFormat:@"%.2f", result ];
    }
    else {
        double result = enteredValue * self.nyTax;
        self.resultLabel.text = [NSString stringWithFormat:@"%.2f", result ];
    }
    
}
@end
