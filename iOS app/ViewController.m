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

- (IBAction)clear:(id)sender {
    self.LabelTest.text = @" ";
}

- (IBAction)switchVals:(id)sender {
}

- (IBAction)save:(id)sender {
}

- (IBAction)addElem:(id)sender {
}

- (IBAction)removeElem:(id)sender {
}

- (IBAction)size:(id)sender {
}

- (IBAction)access:(id)sender {
}

- (IBAction)member:(id)sender {
}

- (IBAction)unionSets:(id)sender {
}

@end
