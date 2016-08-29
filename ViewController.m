//
//  ViewController.m
//  CoreTextProject
//
//  Created by WeiHu on 16/8/29.
//  Copyright © 2016年 WeiHu. All rights reserved.
//

#import "ViewController.h"
#import "CTDisplayView.h"
#import "CTFrameParserConfig.h"
#import "CoreTextData.h"
#import "CTFrameParser.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    CTDisplayView *displayView = [[CTDisplayView alloc] initWithFrame:self.view.bounds];
    displayView.backgroundColor = [UIColor orangeColor];
    [self.view addSubview:displayView];
    
    CTFrameParserConfig *config = [[CTFrameParserConfig alloc] init];
    config.textColor = [UIColor redColor];
    config.width = displayView.frame.size.width;
    
    NSString *path = [[NSBundle mainBundle] pathForResource:@"content" ofType:@"json"];
    CoreTextData *data = [CTFrameParser parseTemplateFile:path config:config];
    displayView.frame = CGRectMake(displayView.frame.origin.x, displayView.frame.origin.y, displayView.frame.size.width, data.height);
    displayView.data = data;
    
   
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
