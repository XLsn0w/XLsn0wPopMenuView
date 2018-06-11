//
//  ViewController.m
//  XLsn0wPopMenuView
//
//  Created by HL on 2018/6/11.
//  Copyright © 2018年 HL. All rights reserved.
//

#import "ViewController.h"
#import "PopMenuView.h"
#import "PopMenuModel.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)pop:(id)sender {
    NSArray *titles =  @[@"滨江长江公园",
                         @"杭州白马湖国际会展中心",
                         @"杭州乐园",
                         @"杭州长乔极地海洋公园"];
    NSMutableArray *data = [NSMutableArray array];
    
    for (NSInteger i = 0; i < titles.count; i++) {
        
        PopMenuModel * info = [PopMenuModel new];
        info.title = titles[i];
        [data addObject:info];
    }
    
    PopMenuView *popMenu = [[PopMenuView alloc] initWithPopMenuWidth:215 popMenuViewY:-40 dataArray:data];
    popMenu.action = ^(NSInteger selectedIndex, NSString *selectedTitle) {
        NSLog(@"selectedIndex = %ld", selectedIndex);
        NSLog(@"selectedTitle = %@", selectedTitle);
    };
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
