//
//  PSYNetworking.m
//  PSYNetworkingDemo
//
//  Created by psylife-mini on 2020/1/15.
//  Copyright © 2020 psylife-mini. All rights reserved.
//

#import "PSYNetworking.h"

@implementation PSYNetworking

#pragma mark - tags
//我更新了一些内容
//这是第三版了
//这是0.9版本了

static AFHTTPSessionManager * _sessionManager;

+ (instancetype)shareInstance {
    
    static PSYNetworking * manager;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        manager = [[self alloc] init];
        _sessionManager = [AFHTTPSessionManager manager];
        _sessionManager.requestSerializer.timeoutInterval = 30.0f;
        _sessionManager.responseSerializer = [AFJSONResponseSerializer serializer];
        _sessionManager.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:@"application/json", @"text/html", @"text/json", @"text/plain", @"text/javascript", @"text/xml", @"image/*", nil];
    });
    return manager;
}


- (void)POSTWithUrl:(NSString *)url
             params:(NSDictionary *)params
            success:(void(^)(id responsed))success
            failure:(void(^)(NSError * error))failure {
    [_sessionManager POST:url parameters:params progress:^(NSProgress * _Nonnull uploadProgress) {
        
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        success(responseObject);
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        failure(error);
    }];
}


@end
