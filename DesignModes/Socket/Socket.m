//
//  Socket.m
//  DesignModes
//
//  Created by 崔玉冠 on 2020/5/8.
//  Copyright © 2020 huadao. All rights reserved.
//

#import "Socket.h"
#import <sys/socket.h>
#import <netinet/in.h>
#import <arpa/inet.h>

@interface Socket ()

@property (nonatomic, assign) int clientSocket;

@end

@implementation Socket

- (NSString *)responseTest {
    BOOL result = [self connectIp:@"61.135.169.125" port:80];
    if (!result) {
        NSLog(@"连接失败");
        return nil;
    }
    NSLog(@"连接成功");
    NSString *requestHeader = @"GET / HTTP/1.1\r\n"
    "Host: www.baidu.com\r\n"
    "User-Agent: Mozilla/4.0 (compatible; MSIE6.0; Windows NT 5.1; SV1; .NET CLR 1.1.4322; .NET CLR 2.0.50727)\r\n"
    "Connection: close\r\n"
    "\r\n";
    NSLog(@"%@", requestHeader);
    NSString *response = [self sendAndRecv:requestHeader];
    NSLog(@"返回的数据:%@", response);
    close(self.clientSocket);
    return response;
}

// 连接服务器
- (BOOL)connectIp:(NSString *)ip port:(int)port {
    int clientSocket = socket(AF_INET, SOCK_STREAM, IPPROTO_TCP);
    self.clientSocket = clientSocket;
    struct sockaddr_in addr;
    addr.sin_family = AF_INET;
    addr.sin_addr.s_addr = inet_addr(ip.UTF8String);
    addr.sin_port = htons(port);
    int result = connect(clientSocket, (const struct sockaddr *)&addr, sizeof(addr));
    if (result == 0) {
        return YES;
    }
    return NO;
}

// 发送和接受数据
- (NSString *)sendAndRecv:(NSString *)sendMsg {
    const char *msg = sendMsg.UTF8String;
    ssize_t sendCount = send(self.clientSocket, msg, strlen(msg), 0);
    NSLog(@"发送的字节数：%zd", sendCount);
    
    uint8_t buffer[1024];
    NSMutableData *datas = [NSMutableData data];
    ssize_t recvCount = recv(self.clientSocket, buffer, sizeof(buffer), 0);
    [datas appendBytes:buffer length:recvCount];
    
    while (recvCount != 0) {
        recvCount = recv(self.clientSocket, buffer, sizeof(buffer), 0);
        NSLog(@"接收的字节数 %zd", recvCount);
        [datas appendBytes:buffer length:recvCount];
    }
    NSString *recvMsg = [[NSString alloc] initWithData:datas encoding:NSUTF8StringEncoding];
    return recvMsg;
}

@end
