//
//  ViewController.m
//  ColorLight
//
//  Created by mocomaruz on 1/3/14.
//  Copyright (c) 2014 mocomaruz. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

// Switch とSegment 用のAction
- (IBAction)switchOnOff:(UISwitch *)sender;
- (IBAction)segmentFirstScond:(UISegmentedControl *)sender;

// Slider 用のproperty
@property (weak, nonatomic) IBOutlet UISlider *mySlider;

// Slider 用のAction
- (IBAction)updateValue:(UISlider *)sender;

// Label 用のproperty
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


// Switch で背景色を変更する

- (IBAction)switchOnOff:(UISwitch *)sender {
    NSLog(@"switch %d",sender.on);

    
    if (sender.on) {
        self.view.backgroundColor = [UIColor redColor];
    }else{self.view.backgroundColor = [UIColor blueColor];
    }
    
}

// Segmented Control で背景色を変更する

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

// Slider の位置によってLabel 部分にfloat1 *100 で表示させる

- (IBAction)updateValue:(UISlider *)sender {
// Log 出力(%.1f でfloat 1桁, 最後に*100 で0.0-100.0)
    NSLog(@"%.1f %%" , _mySlider.value * 100);
    
// Label に表示
    _valueLabel.text = [NSString stringWithFormat:@"%.1f" , sender.value * 100];
}
@end
// Commit のテスト1
