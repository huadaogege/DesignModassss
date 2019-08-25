//
//  AdvanceMediaPlayer.h
//  DesignModes
//
//  Created by 崔玉冠 on 2019/8/25.
//  Copyright © 2019 huadao. All rights reserved.
//

#ifndef AdvanceMediaPlayer_h
#define AdvanceMediaPlayer_h
#import <UIKit/UIKit.h>

@protocol AdvanceMediaPlayer <NSObject>

+ (void)playVlcWithName:(NSString *)name;

+ (void)playMp4WithName:(NSString *)name;

@end


#endif /* AdvanceMediaPlayer_h */
