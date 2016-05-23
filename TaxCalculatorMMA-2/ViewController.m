//
//  ViewController.m
//  TaxCalculatorMMA-2
//
//  Created by joy on 5/22/16.
//  Copyright © 2016 JanL. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *priceTextField;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentedControl;
@property (weak, nonatomic) IBOutlet UILabel *resultLabel;
@property double sfTax;
@property double chiTax;
@property double nycTax;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.sfTax = .0875;
    self.chiTax = 1.025;
    self.nycTax = 0.8875;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)onCalculateButtonTapped:(UIButton *)sender {

    int myNewInt = [self.priceTextField.text intValue];
    
    if (self.segmentedControl.selectedSegmentIndex == 0)
    {
        double result = myNewInt * self.sfTax;
        self.resultLabel.text = [NSString stringWithFormat:@"%.2f", result];
    
    } else if (self.segmentedControl.selectedSegmentIndex == 1) {
        
        double result = myNewInt * self.chiTax;
        self.resultLabel.text = [NSString stringWithFormat:@"%.2f", result];
        
    } else {
        
        double result = myNewInt * self.nycTax;
        self.resultLabel.text = [NSString stringWithFormat:@"%.2f", result];
    }
    
    
}

@end
