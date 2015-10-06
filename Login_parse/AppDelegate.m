//
//  AppDelegate.m
//  Login_parse
//
//  Created by Vivek Reddy on 05/10/15.
//  Copyright © 2015 Vivek Reddy. All rights reserved.
//

#import "AppDelegate.h"
#import <Parse/Parse.h>


@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    [Parse setApplicationId:@"2cRGhU2zd3QPRpCbleoiOZNvNOhD8J2LYrySPGLE"
                  clientKey:@"nGOunGIluJ5vQUrHbQLYz3Xb9JgAx4mk1or00Lv3"];
//    PFObject *user1= [PFObject objectWithClassName:@"User"];
//    [user1 setObject:@"mvivekt510@gmail" forKey:@"email"];
//    [user1 setObject:@"admin" forKey:@"username"];
//    [user1 setObject:@"admin" forKey:@"password"];
//    [user1 saveInBackgroundWithBlock:^(BOOL succeeded, NSError * _Nullable error) {
//        if(succeeded){
//            NSLog(@"User registered sucessfully");
//        }else{
//            NSLog(@"%@",error);
//        }
//        
//    }];
    
    
    self.window =[[UIWindow alloc]initWithFrame:[[UIScreen mainScreen]bounds]];
    self.loginViewController =[[LoginViewController alloc]initWithNibName:@"LoginViewController" bundle:nil];
    self.window.rootViewController =self.loginViewController;
    [self.window makeKeyAndVisible];
    
    
    
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
