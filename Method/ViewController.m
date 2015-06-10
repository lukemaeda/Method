//
//  ViewController.m
//  Method
//
//  Created by kunren10 on 2015/06/10.
//  Copyright (c) 2014年 Hajime Maeda. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *lbMethod;
@property (weak, nonatomic) IBOutlet UILabel *lbParam01;
@property (weak, nonatomic) IBOutlet UILabel *lbParam02;

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

#pragma mark - Action Method

//
- (IBAction)proc01:(id)sender; {
    
    // メソッド１呼出　引数なしタイプ
    [self doMethod01];
}

- (IBAction)proc02:(id)sender {
    
    // メソッド２呼出　引数：数字タイプ
    [self doMethod02:123];

}

- (IBAction)proc03:(id)sender {
    
    // メソッド３呼出 引数：文字タイプ
    [self doMethod03:@"文字タイプ"];
}

- (IBAction)proc04:(id)sender {
    
    // メソッド４呼出
    [self doMethod04:123
                    :456];
}

- (IBAction)proc05:(id)sender {
    
    // メソッド５呼出
    [self doMethod05:123
               parm2:456];
}

- (IBAction)proc06:(id)sender {
    
    // メソッド６呼出
    int ret = [self doMethod06];
    
    NSLog(@"%d", ret);
    
    NSString *str01 = [NSString stringWithFormat:@"%d", ret];
    self.lbParam01.text = str01;
    self.lbParam02.text = nil;
}

- (IBAction)proc07:(id)sender {
    
    // メソッド７呼出
    NSString *ret = [self doMethod07];
    
    NSLog(@"%@", ret);
    
    NSString *str01 = [NSString stringWithFormat:@"%@", ret];
    self.lbParam01.text = str01;
    self.lbParam02.text = nil;
}

- (IBAction)proc08:(id)sender {
    
    // メソッド８呼出
    int ret = [self doMethod08WithValue01:100
                                  value02:300];
    
    NSLog(@"%d", ret);
    
    NSString *str01 = [NSString stringWithFormat:@"%d", ret];
    self.lbParam01.text = str01;
    self.lbParam02.text = nil;
}


- (IBAction)proc09:(id)sender {
    
    // メソッド９呼出
    BOOL ret = [self doMethod09:99];
    
    if (ret == YES) {
        NSLog(@"偶数:%d", ret);
        NSString *str01 = [NSString stringWithFormat:@"偶数:%d", ret];
        self.lbParam01.text = str01;
    } else {
        NSLog(@"奇数:%d", ret);
        NSString *str01 = [NSString stringWithFormat:@"奇数:%d", ret];
        self.lbParam01.text = str01;
    }
    
    self.lbParam02.text = nil;
}

//_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/

#pragma mark - Own（オン） Method

// メソッド１ (void)とは戻り値なし
// (戻り値：なし、引数：なし)
- (void)doMethod01 {
    
    // 実行されているクラス名とメソッド名を表示する場合
    NSLog(@"%s",__func__);
    
    NSString *str = [NSString stringWithFormat:@"%s", __func__];
    self.lbMethod.text = str;
    self.lbParam01.text = nil;
    self.lbParam02.text = nil;
    
}

// メソッド２ (void)とは戻り値なし
// (戻り値：なし、引数：１つ(int)) argとは引数
- (void)doMethod02:(int)arg01 {
    
    // 実行されているクラス名とメソッド名を表示する場合
    NSLog(@"%s",__func__);
    // arg01引数
    NSLog(@"%d",arg01);
    
    NSString *str = [NSString stringWithFormat:@"%s", __func__];
    self.lbMethod.text = str;
    NSString *str01 = [NSString stringWithFormat:@"%d", arg01];
    self.lbParam01.text = str01;
    self.lbParam02.text = nil;
}

// メソッド３ (void)とは戻り値なし
// (戻り値：なし、引数：１つ(int)) argとは引数
- (void)doMethod03:(NSString*)arg01 {
    
    // 実行されているクラス名とメソッド名を表示する場合
    NSLog(@"%s",__func__);
    // arg01引数
    NSLog(@"%@",arg01);
    
    NSString *str = [NSString stringWithFormat:@"%s", __func__];
    self.lbMethod.text = str;
    NSString *str01 = [NSString stringWithFormat:@"%@", arg01];
    self.lbParam01.text = str01;
    self.lbParam02.text = nil;
    
}

// メソッド４ (void)とは戻り値なし
// (戻り値：なし、引数：２つ(キーワードなし)) argとは引数
- (void)doMethod04:(int)arg01
                  :(int)arg02 {
    
    // 実行されているクラス名とメソッド名を表示する場合
    NSLog(@"%s",__func__);
    // arg01引数
    NSLog(@"%d,%d",arg01,arg02);
    
    NSString *str = [NSString stringWithFormat:@"%s", __func__];
    self.lbMethod.text = str;
    NSString *str01 = [NSString stringWithFormat:@"%d", arg01];
    self.lbParam01.text = str01;
    NSString *str02 = [NSString stringWithFormat:@"%d", arg02];
    self.lbParam02.text = str02;
          
}

// メソッド５ (void)とは戻り値なし
// (戻り値：なし、引数：２つ(キーワードあり)) argとは引数
- (void)doMethod05:(int)arg01
             parm2:(int)arg02 {
    
    // 実行されているクラス名とメソッド名を表示する場合
    NSLog(@"%s",__func__);
    // arg01引数
    NSLog(@"%d,%d",arg01,arg02);
    
    NSString *str = [NSString stringWithFormat:@"%s", __func__];
    self.lbMethod.text = str;
    NSString *str01 = [NSString stringWithFormat:@"%d", arg01];
    self.lbParam01.text = str01;
    NSString *str02 = [NSString stringWithFormat:@"%d", arg02];
    self.lbParam02.text = str02;
    
}

// メソッド６
// (戻り値：int、引数：なし) int型　argとは引数
- (int)doMethod06 {
    
    NSLog(@"%s",__func__);
    
    return 123;
}

// メソッド７
// (戻り値：NSString、引数：なし) NSString型　argとは引数
- (NSString *)doMethod07 {
    
    NSLog(@"%s",__func__);
    
    return @"文字タイプ";
}

// メソッド８
// (戻り値：int、引数：２つ) int型　argとは引数
- (int)doMethod08WithValue01:(int)val01
                     value02:(int)val02 {
    
    NSLog(@"%s",__func__);
    
    return val01 + val02;
}

// メソッド９　(偶数判定)
// (戻り値：int、引数：１つ) int型　argとは引数
- (BOOL)doMethod09:(int)val {
    
    NSLog(@"%s",__func__);
    
    if (val % 2 == 0) {
        return YES;
    }
        return  NO;
}
@end
