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

- (void)countDownTillIntroduction: (int)numOfDays
{
    if(numOfDays == 0)
    {
        NSLog(@"The time has come");
    }
    else if(numOfDays != 0)
    {
        NSLog(@"%@ days left until introductions", [NSString stringWithFormat:@"%i", numOfDays]);
        
        int oneLessDay = numOfDays - 1;
        
        [self countDownTillIntroduction: oneLessDay];
    }


    
    
    //STEP 4 Add a new function called countDownTillIntroduction: that accepts an integer called numberOfDays as an argument
    //The function should do the following:
    //Check to see if the numberOfDays is 0
    //If the number of days is 0, it should print "The time has come"
    //If numberOfDays is not 0
    //It should print "[numberOfDays] days left until introductions"
    //It should declare and set a variable oneLessDay and set it to numberOfDays - 1
    //It should then call countDownTillIntroduction and pass in oneLessDay
    //In the didFinishLaunching method before you call printIntroductions call countDownTillIntroduction and pass in 4
    

    

}

- (void)printIntroductions:(NSString *)name
{


    NSString *introduction = [NSString stringWithFormat:@"My name is %@", name];
    NSString *japaneseIntroduction = [name stringByAppendingString:@" to moushimasu"];
    
    NSLog(@"%@", introduction);
    NSLog(@"%@", japaneseIntroduction);
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    NSString *myName = @"Sarah";
    
    /*NSString *introduction = [NSString stringWithFormat:@"My name is %@", myName];
    NSString *japaneseIntroduction = [myName stringByAppendingString:@" to moushimasu"];
    
    NSLog(@"%@", introduction);
    NSLog(@"%@", japaneseIntroduction);*/
    
    //STEP 3 Declare a new function called printIntroductions
    //The function should accept an NSString as a parameter called name
    //Cut and paste the introduction and japaneseIntroduction code inside of the new function
    //You should have errors for referencing 'myName'. Change any reference to 'myName' to 'name'.
        //This is an error of scope. You only declared 'myName' in your didFinishLaunching method. Not in your new method. In your new method, you declared an argument called 'name' that your function accepts when the method is called
        //In your didFinishLaunching method after you set myName call printIntroductions: and pass in 'myName' as an argument
        //It should print out the introduction and Japanese introduction
    
    [self printIntroductions: myName];
    [self countDownTillIntroduction: 4];
    
    return YES;

}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
