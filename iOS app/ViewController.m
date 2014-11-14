//
//  ViewController.m
//  iOS app
//
//  Created by Nikhil Vellala on 11/13/14.
//  Copyright (c) 2014 Nikhil Vellala. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *LabelTest;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)StartListManager:(id)sender {
    self.LabelTest.text = @"List Manager";
}

- (IBAction)StartOCManager:(id)sender {
    self.LabelTest.text = @"OC Manager";
}

- (IBAction)clearList:(id)sender {
    self.LabelTest.text = @" ";
}

@end
