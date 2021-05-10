//
//  RandomNumberUtils.h
//  Ace2Three
//
//  Created by haribabuv on 08/09/17.
//  Copyright © 2017 haribabuv. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RandomNumberUtils : NSObject

+(RandomNumberUtils *)sharedInstance;

-(NSString *)getRandomNumber:(NSString *)gameID;
//-(void)checkReachability;
@end
