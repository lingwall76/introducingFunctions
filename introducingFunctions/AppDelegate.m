//
//  AppDelegate.m
//  introducingFunctions
//
//  Created by Sarah on 4/1/15.
//  Copyright (c) 2015 Big Nerd Ranch. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate



- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    NSString *name = @"Sarah";
    
//It should print out the introduction and Japanese introduction
    
    
    [self countDownTillIntroduction: 4];
    [self printIntroductions: name];
    
    return YES;

}


- (void)printIntroductions:(NSString *)name  {
    
    NSString *introduction = [NSString stringWithFormat:@"My name is %@", name];
    NSString *japaneseIntroduction = [name stringByAppendingString:@" to moushimasu"];
    
    NSLog(@"%@", introduction);
    NSLog(@"%@", japaneseIntroduction);
}

- (void)countDownTillIntroduction: (int)numOfDays  {
    
    if(numOfDays == 0)  {
        NSLog(@"The time has come");
    }
    else if(numOfDays != 0)  {
        NSLog(@"%i, days left until introductions", numOfDays);
        
        int oneLessDay = numOfDays - 1;
        
        [self countDownTillIntroduction: oneLessDay];
    }
}

@end

