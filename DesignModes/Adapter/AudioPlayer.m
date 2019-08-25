//
//  AudioPlayer.m
//  DesignModes
//
//  Created by 崔玉冠 on 2019/8/25.
//  Copyright © 2019 huadao. All rights reserved.
//

#import "AudioPlayer.h"
#import "MediaAdapter.h"

@implementation AudioPlayer

+ (void)playWithName:(NSString *)name type:(NSString *)type {
    if ([type.lowercaseString isEqualToString:@"mp3"]) {
        NSLog(@"正在播放Mp3格式文件:%@", name);
    } else {
        [MediaAdapter playWithName:name type:type];
    }
}

@end
