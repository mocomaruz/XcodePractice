//
//  ViewController.m
//  ColorLight
//
//  Created by mocomaruz on 1/3/14.
//  Copyright (c) 2014 mocomaruz. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

- (IBAction)switchOnOff:(UISwitch *)sender;
- (IBAction)segmentFirstScond:(UISegmentedControl *)sender;
@property (weak, nonatomic) IBOutlet UISlider *mySlider;
- (IBAction)updateValue:(UISlider *)sender;

@property (weak, nonatomic) IBOutlet UILabel *valueLabel;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)switchOnOff:(UISwitch *)sender {
    NSLog(@"switch %d",sender.on);

    
    if (sender.on) {
        self.view.backgroundColor = [UIColor redColor];
    }else{self.view.backgroundColor = [UIColor blueColor];
    }
    
}

- (IBAction)segmentFirstScond:(UISegmentedControl *)sender {
    NSLog(@"segment %d",sender.selectedSegmentIndex);
    
    if (sender.selectedSegmentIndex == 0) {
        self.view.backgroundColor = [UIColor whiteColor];
    }else if(sender.selectedSegmentIndex == 1)
        {self.view.backgroundColor = [UIColor greenColor];
        }else if(sender.selectedSegmentIndex == 2)
        {self.view.backgroundColor = [UIColor redColor];
        }else if(sender.selectedSegmentIndex == 3)
        {self.view.backgroundColor = [UIColor blueColor];
        }
    
    
}

- (IBAction)updateValue:(UISlider *)sender {
    NSLog(@"%.1f %%" , _mySlider.value * 100);
    _valueLabel.text = [NSString stringWithFormat:@"%.1f" , sender.value * 100];
}
@end
