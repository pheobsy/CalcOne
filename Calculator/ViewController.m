//
//  ViewController.m
//  Calculator
//
//  Created by Anastasiia Rusnak on 8/3/16.
//  Copyright © 2016 Anastasiia Rusnak. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
-(IBAction)button1{
    display.text = [NSString stringWithFormat:@"%@1", display.text];
}
-(IBAction)button2{
    display.text = [NSString stringWithFormat:@"%@2", display.text];
}
-(IBAction)button3{
    display.text = [NSString stringWithFormat:@"%@3", display.text];
}
-(IBAction)button4{
    display.text = [NSString stringWithFormat:@"%@4", display.text];
}
-(IBAction)button5{
    display.text = [NSString stringWithFormat:@"%@5", display.text];
}
-(IBAction)button6{
    display.text = [NSString stringWithFormat:@"%@6", display.text];
}
-(IBAction)button7{
    display.text = [NSString stringWithFormat:@"%@7", display.text];
}
-(IBAction)button8{
    display.text = [NSString stringWithFormat:@"%@8", display.text];
}
-(IBAction)button9{
    display.text = [NSString stringWithFormat:@"%@9", display.text];
}
-(IBAction)button0{
    display.text = [NSString stringWithFormat:@"%@0", display.text];
}
-(IBAction)plusButton{
    operation = PLUS;
    storage = display.text;
    display.text = @"";
}
-(IBAction)minusButton{
    operation = MINUS;
    storage = display.text;
    display.text = @"";
}
-(IBAction)multiplyButton{
    operation = MULTIPLY;
    storage = display.text;
    display.text = @"";
}
-(IBAction)divideButton{
    operation = DIVIDE;
    storage = display.text;
    display.text = @"";
}

-(IBAction)buttonEquals{
    NSString *secondNumber = display.text;
    switch (operation) {
        case PLUS :
              display.text = [NSString stringWithFormat:@"%f", [storage doubleValue] + [secondNumber doubleValue]];
            break;
        case MINUS :
            display.text = [NSString stringWithFormat:@"%f", [storage doubleValue] - [secondNumber doubleValue]];
            break;
        case MULTIPLY :
            display.text = [NSString stringWithFormat:@"%f", [storage doubleValue] * [secondNumber doubleValue]];
            break;
        case DIVIDE :
            display.text = [NSString stringWithFormat:@"%f", [storage doubleValue] / [secondNumber doubleValue]];
            break;
    }
    
    
    
}
-(IBAction)buttonClear{
    display.text = @"";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
