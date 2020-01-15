//
//  PSYNetworking.h
//  PSYNetworkingDemo
//
//  Created by psylife-mini on 2020/1/15.
//  Copyright © 2020 psylife-mini. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AFNetworking/AFNetworking.h>

NS_ASSUME_NONNULL_BEGIN
@interface PSYNetworking : NSObject

+ (instancetype)shareInstance;


- (void)POSTWithUrl:(NSString *)url
             params:(NSDictionary *)params
            success:(void(^)(id responsed))success
            failure:(void(^)(NSError * error))failure;

@end

NS_ASSUME_NONNULL_END
