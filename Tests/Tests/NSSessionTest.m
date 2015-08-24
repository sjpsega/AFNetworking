//
//  NSSessionTest.m
//  AFNetworking Tests
//
//  Created by sjpsega on 15/8/24.
//  Copyright (c) 2015年 AFNetworking. All rights reserved.
//
#import "AFTestCase.h"
@interface NSSessionTest : AFTestCase

@end


@implementation NSSessionTest

- (void)testNSSession{
    NSURLSessionDataTask *task = [[NSURLSession sharedSession] dataTaskWithRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"https://httpbin.org/delay/1"]] completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        expect(data).will.beNil();
    }];
    [task resume];
}

@end
