//
//  ViewController.m
//  iOS app
//
//  Created by Nikhil Vellala on 11/13/14.
//  Copyright (c) 2014 Nikhil Vellala. All rights reserved.
//

#import "ViewController.h"
#import "SetManager.h"
#import "ListManager.h"
#import "OCManager.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *addElemField;
@property (weak, nonatomic) IBOutlet UITextField *removeElemField;
@property (weak, nonatomic) IBOutlet UITextField *accessField;
@property (weak, nonatomic) IBOutlet UITextField *memField;

@end

@implementation ViewController

SetManager* myManager;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)StartListManager:(id)sender {
    // self.LabelTest.text = @"List Manager";
    myManager = [[ListManager alloc] init];
}

- (IBAction)StartOCManager:(id)sender {
    // self.LabelTest.text = @"OC Manager";
    myManager = [[OCManager alloc] init];
}

- (IBAction)clear:(id)sender {
    // self.LabelTest.text = @" ";
    [myManager clear:myManager.SetA];
}

- (IBAction)switchVals:(id)sender {

}

- (IBAction)save:(id)sender {
    [myManager save:myManager.SetA sb:myManager.SetB];
}

- (IBAction)addElem:(id)sender {
    [myManager addElem:myManager.SetA index:(int)self.addElemField.text];
}

- (IBAction)removeElem:(id)sender {
    [myManager removeElem:myManager.SetA index:(int)self.removeElemField.text];
}

- (IBAction)size:(id)sender {
    [myManager size:myManager.SetA];
}

- (IBAction)access:(id)sender {
    [myManager accessMem:myManager.SetA index:(int)self.accessField.text];
}

- (IBAction)member:(id)sender {
    [myManager memTest:myManager.SetA val:(int)self.memField.text];
}

- (IBAction)unionSets:(id)sender {
}

@end
