//
//  Mp4Player.m
//  DesignModes
//
//  Created by 崔玉冠 on 2019/8/25.
//  Copyright © 2019 huadao. All rights reserved.
//

#import "Mp4Player.h"

@implementation Mp4Player

+ (void)playVlcWithName:(NSString *)name {
    NSLog(@"我只播放Mp4格式文件.");
}

+ (void)playMp4WithName:(NSString *)name {
    NSLog(@"正在播放Mp4格式文件:%@", name);
}

@end
