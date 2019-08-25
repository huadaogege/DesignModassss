//
//  MediaAdapter.m
//  DesignModes
//
//  Created by 崔玉冠 on 2019/8/25.
//  Copyright © 2019 huadao. All rights reserved.
//

#import "MediaAdapter.h"
#import "VlcPlayer.h"
#import "Mp4Player.h"

@implementation MediaAdapter

+ (void)playWithName:(NSString *)name type:(NSString *)type {
    if ([type.lowercaseString isEqualToString:@"vlc"]) {
        [VlcPlayer playVlcWithName:name];
    } else if ([type.lowercaseString isEqualToString:@"mp4"]) {
        [Mp4Player playMp4WithName:name];
    } else {
        NSLog(@"暂不支持:%@类型的文件.", name);
    }
}

@end
