//
//  VlcPlayer.m
//  DesignModes
//
//  Created by 崔玉冠 on 2019/8/25.
//  Copyright © 2019 huadao. All rights reserved.
//

#import "VlcPlayer.h"

@implementation VlcPlayer

+ (void)playMp4WithName:(NSString *)name {
    NSLog(@"我只支持Vlc格式文件.");
}

+ (void)playVlcWithName:(NSString *)name {
    NSLog(@"正在播放Vlc格式文件:%@", name);
}

@end
