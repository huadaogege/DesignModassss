//
//  MediaPlayer.h
//  DesignModes
//
//  Created by 崔玉冠 on 2019/8/25.
//  Copyright © 2019 huadao. All rights reserved.
//  是作为两个不兼容的接口之间的桥梁, 这种类型的设计模式属于结构型模式, 它结合了两个独立接口的功能。
//  这种模式涉及到一个单一的类, 该类负责加入独立的或不兼容的接口功能. 该例子是为audioPlayer播放器增加
//  vlc及mp4格式播放能力

#ifndef MediaPlayer_h
#define MediaPlayer_h
#import <UIKit/UIKit.h>

@protocol MediaPlayer <NSObject>

+ (void)playWithName:(NSString *)name type:(NSString *)type;

@end


#endif /* MediaPlayer_h */
