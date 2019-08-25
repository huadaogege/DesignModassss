//
//  ViewController.m
//  DesignModes
//
//  Created by 崔玉冠 on 2019/8/22.
//  Copyright © 2019 huadao. All rights reserved.
//

#import "ViewController.h"
// 工厂模式
#import "CalculateFactory.h"
// 策略模式
#import "CashContext.h"
// 装饰器模式
#import "ChickenBurger.h"
#import "Condiment.h"
#import "Egg.h"
#import "Sausage.h"
// 适配器模式
#import "AudioPlayer.h"
// 组合模式
#import "ConcreteCompany.h"
#import "HRDepartment.h"
#import "FinanceDepartment.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    /* 工厂模式 */
    /*
    id <Calculate> calculate = [CalculateFactory createCalculate:@"*"];
    calculate.numberA = 5.0;
    calculate.numberB = 6.0;
    CGFloat result = [calculate calculate];
    NSLog(@"%f", result);
     */
    
    /* 策略模式 */
    /*
    CashContext *cashContext = [[CashContext alloc] initWithCashType:cashReturnMoney];
    CGFloat result = [cashContext getResult:46.0];
    NSLog(@"%f", result);
     */
    
    /* 装饰器模式 */
    /*
    ChickenBurger *chickenBurger = [[ChickenBurger alloc] init];
    NSLog(@"产品:%@ - 价位:%f", [chickenBurger description], [chickenBurger cost]);
    Egg *eggBurger = [[Egg alloc] initWithChickBurger:chickenBurger];
    NSLog(@"产品:%@ - 价位:%f", [eggBurger description], [eggBurger cost]);
    Sausage *sausageBurger = [[Sausage alloc] initWithChickBurger:eggBurger];
    NSLog(@"产品:%@ - 价位:%f", [sausageBurger description], [sausageBurger cost]);
     */
    
    /* 适配器模式 */
    /*
    [AudioPlayer playWithName:@"智商二五零.mp3" type:@"mp3"];
    [AudioPlayer playWithName:@"beyond.vlc" type:@"vlc"];
    [AudioPlayer playWithName:@"007 大破皇家赌场.mp4" type:@"mp4"];
    [AudioPlayer playWithName:@"苍老师.avi" type:@"avi"];
     */
    
    /* 组合模式 */
    ConcreteCompany *headCompany = [[ConcreteCompany alloc] initWithName:@"奇安信公司"];
    id<Company> headHR = [[HRDepartment alloc] initWithName:@"奇安信公司人力资源部"];
    id<Company> headFinance = [[FinanceDepartment alloc] initWithName:@"奇安信公司财务部"];
    [headCompany addChild:headHR];
    [headCompany addChild:headFinance];
    
    ConcreteCompany *terSafeCompany = [[ConcreteCompany alloc] initWithName:@"终端安全公司"];
    id<Company> terSafeHR = [[HRDepartment alloc] initWithName:@"终端安全公司人力资源部"];
    id<Company> terSafeFinance = [[FinanceDepartment alloc] initWithName:@"终端安全公司财务部"];
    [terSafeCompany addChild:terSafeHR];
    [terSafeCompany addChild:terSafeFinance];
    
    [headCompany addChild:terSafeCompany];
    
    ConcreteCompany *authCompany = [[ConcreteCompany alloc] initWithName:@"身份验证公司"];
    id<Company> authHR = [[HRDepartment alloc] initWithName:@"身份验证公司人力资源部"];
    id<Company> authFinance = [[FinanceDepartment alloc] initWithName:@"身份验证公司财务部"];
    [authCompany addChild:authHR];
    [authCompany addChild:authFinance];
    
    [headCompany addChild:authCompany];
    
    NSLog(@"公司结构图:-------------------");
    [headCompany display];
    NSLog(@"公司部门职责:-------------------");
    [headCompany lineOfDuty];
    
}


@end
