//
//  ViewController.m
//  DesignModes
//
//  Created by 崔玉冠 on 2019/8/22.
//  Copyright © 2019 huadao. All rights reserved.
//

#import "ViewController.h"
// 工厂模式
#import "FemaleFactory.h"
#import "MaleFactory.h"

// 策略模式
#import "CashContext.h"
// 装饰器模式
#import "ConcreateDecoratorA.h"
#import "ConcreateDecoratorB.h"
#import "ConcreateComponent.h"

// 适配器模式
#import "AudioPlayer.h"
// 组合模式
#import "ConcreteCompany.h"
#import "HRDepartment.h"
#import "FinanceDepartment.h"
// 建造者模式
#import "CarDirector.h"

// 中介者模式
#import "AbstractMediator.h"
#import "Mediator.h"

// MVVM
#import "CMVVMViewController.h"
// MVP
#import "MVPViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    /* 工厂模式 */
    
    
    /* 策略模式 */
    /*
    CashContext *cashContext = [[CashContext alloc] initWithCashType:cashReturnMoney];
    CGFloat result = [cashContext getResult:46.0];
    NSLog(@"%f", result);
     */
    
    /* 装饰器模式 */
    /*
    ConcreateComponent *component = [[ConcreateComponent alloc] init];
    ConcreateDecoratorA *decoratorA = [[ConcreateDecoratorA alloc] init];
    ConcreateDecoratorB *decoratorB = [[ConcreateDecoratorB alloc] init];
    
    component = (ConcreateComponent *)[decoratorA decorator:component];
    component = (ConcreateComponent *)[decoratorB decorator:component];
    [component operation];
    */
    /* 适配器模式 */
    /*
    [AudioPlayer playWithName:@"智商二五零.mp3" type:@"mp3"];
    [AudioPlayer playWithName:@"beyond.vlc" type:@"vlc"];
    [AudioPlayer playWithName:@"007 大破皇家赌场.mp4" type:@"mp4"];
    [AudioPlayer playWithName:@"苍老师.avi" type:@"avi"];
     */
    
    /* 组合模式 */
    /*
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
     */
    
    /* 建造者模式 */
    /*
    CarDirector *director = [[CarDirector alloc] init];
    CarModel *benzCarModel = [director getABenzCarModel];
    [benzCarModel run];
    
    CarModel *bmwCarModel = [director getABmwCarModel];
    [bmwCarModel run];
     */
    /* 中介者模式 */
    /*
    AbstractMediator *mediator = [[Mediator alloc] init];
    
    NSLog(@"---------- 采购人员采购电脑 ---------");
    Purchase *purchase = [[Purchase alloc] init];
    [purchase purchase:mediator];
    [purchase buyIMBComputer:100];

    NSLog(@"---------- 销售人员销售电脑 ---------");
    Sale *sale = [[Sale alloc] init];
    [sale sale:mediator];
    [sale sellIBMComputer:1];

    NSLog(@"---------- 库房管理人员清理库存 ---------");
    Stock *stock = [[Stock alloc] init];
    [stock stock:mediator];
    [stock clearStock];
    */
    
    // MVVM
    /*
    CMVVMViewController *cmvc = [[CMVVMViewController alloc] init];
    [self addChildViewController:cmvc];
    [self.view addSubview:cmvc.view];
     */
    
    // MVP
    /*
    MVPViewController *mvpvc = [[MVPViewController alloc] init];
    [self addChildViewController:mvpvc];
    [self.view addSubview:mvpvc.view];
     */
    
//    id <HumanProtocol> human = [MaleFactory createYellowHuman];
//    [human getColor];
//    [human getSex];
//    [human talk];
    
    
}


@end
