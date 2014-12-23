//
//  ViewController.m
//  hackday
//
//  Created by ShaoLei on 12/6/14.
//  Copyright (c) 2014 ShaoLei. All rights reserved.
//

#import "ViewController.h"
#import "question.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *question;
@property (weak, nonatomic) IBOutlet UIButton *ask;
@property (weak, nonatomic) IBOutlet UITextField *choice1;
@property (weak, nonatomic) IBOutlet UITextField *choice2;
//@property(strong,nonatomic) NSMutableArray *myquesions;
//@property (strong, nonatomic) IBOutlet UIView *tableview;
//@property (strong, nonatomic) question *curr;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //self.myquesions = [[NSMutableArray alloc] init];
    //self.data = [[NSMutableArray alloc] init];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}






- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if (sender != self.ask) return;
    if (self.question.text.length > 0) {
        NSString *content = [NSString stringWithFormat:self.question.text];
        NSString *firstChoice = [NSString stringWithFormat:self.choice1.text];
        NSString *secondChoice =[ NSString stringWithFormat:self.choice2.text];
        self.curr = [[question alloc] initWithString: content
                                                           first: firstChoice second: secondChoice];
    }
}






@end
