//
//  RandomNumberUtils.m
//  Ace2Three
//
//  Created by haribabuv on 08/09/17.
//  Copyright © 2017 haribabuv. All rights reserved.
//

#import "RandomNumberUtils.h"

@implementation RandomNumberUtils

#pragma mark
#pragma mark RandomNumberUtils Singleton
+(RandomNumberUtils *)sharedInstance {
    static RandomNumberUtils *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[self alloc] init];
    });
    
    return sharedInstance;
}

- (id)init {
    if (self = [super init]) {
    }
    return self;
}

#pragma mark - getRandomNumber
-(NSString *)getRandomNumber:(NSString *)gameID{
    
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
    [dateFormat setDateFormat:@"yyyyMMddHHmmssSSS"];
    
    NSDate *now = [[NSDate alloc] init];
    
    NSString *theDate = [dateFormat stringFromDate:now];
    //NSString *theTime = [timeFormat stringFromDate:now];
    return [NSString stringWithFormat:@"%@-%@",gameID,theDate];
}

//-(void)checkReachability{
//    [[AFNetworkReachabilityManager sharedManager] setReachabilityStatusChangeBlock:^(AFNetworkReachabilityStatus status) {
//        NSLog(@"Reachability: %@", AFStringFromNetworkReachabilityStatus(status));
//    }];
//
//    [[AFNetworkReachabilityManager sharedManager] startMonitoring];
//}
@end
