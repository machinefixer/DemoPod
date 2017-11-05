//
//  YCDemo.m
//  AFNetworking
//
//  Created by yuchen on 2017/11/6.
//

#import "YCDemo.h"
#import <AFNetworking/AFHTTPSessionManager.h>
#import <AFNetworking/AFURLRequestSerialization.h>

@implementation YCDemo

- (void)checkout
{
    NSString *URLString = @"https://httpbin.org/ip";
    NSURLRequest *request = [[AFJSONRequestSerializer serializer] requestWithMethod:@"GET"
                                                                          URLString:URLString
                                                                         parameters:nil
                                                                              error:nil];
    NSURLSessionConfiguration *configuration = [NSURLSessionConfiguration defaultSessionConfiguration];
    AFURLSessionManager *manager = [[AFURLSessionManager alloc] initWithSessionConfiguration:configuration];
    NSURLSessionDataTask *task = [manager dataTaskWithRequest:request completionHandler:^(NSURLResponse * _Nonnull response, id  _Nullable responseObject, NSError * _Nullable error) {
        NSLog(@"response: %@", responseObject);
    }];
    
    [task resume];
    
}

@end
