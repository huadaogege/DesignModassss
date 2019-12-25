//
//  CarModelProtocol.h
//  DesignModes
//
//  Created by 崔玉冠 on 2019/12/23.
//  Copyright © 2019 huadao. All rights reserved.
//

#ifndef CarModelProtocol_h
#define CarModelProtocol_h

@protocol ModelProtocol <NSObject>

- (void)start;
- (void)stop;
- (void)alarm;
- (void)engineBoom;

- (void)run;


@end


#endif /* CarModelProtocol_h */
