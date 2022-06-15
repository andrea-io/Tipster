//
//  TipViewController.m
//  Tipster
//
//  Created by Andrea Gonzalez on 6/15/22.
//

#import "TipViewController.h"

@interface TipViewController ()
@property (weak, nonatomic) IBOutlet UISegmentedControl *tipSegCtrl;

@property (weak, nonatomic) IBOutlet UILabel *totalField;
@property (weak, nonatomic) IBOutlet UILabel *tipField;
@property (weak, nonatomic) IBOutlet UITextField *billField;

@end

@implementation TipViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
- (IBAction)onTap:(id)sender {
    NSLog(@"Tapped");
    [self.view endEditing:true];
}

- (IBAction)updateTotal:(id)sender {
    // Set the labels to sample strings
    self.tipField.text = @"$20.00";
    self.totalField.text = @"$120.00";
    
    double tipPercentages[] = {0.15, 0.18, 0.20};
    double selectedTipPercent = tipPercentages[self.tipSegCtrl.selectedSegmentIndex];
    double billTotal = [self.billField.text doubleValue];
    
    double percentOfBill = billTotal * selectedTipPercent;
    double myDouble = billTotal + percentOfBill;
    self.tipField.text = [NSString stringWithFormat:@"$%.2f",percentOfBill];
    self.totalField.text = [NSString stringWithFormat:@"$%.2f", myDouble];
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
