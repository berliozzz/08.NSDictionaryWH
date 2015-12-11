//
//  AppDelegate.m
//  Dictionary(HW8)
//
//  Created by Nikolay Berlioz on 07.09.15.
//  Copyright (c) 2015 Nikolay Berlioz. All rights reserved.
//

#import "AppDelegate.h"
#import "Student.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    Student *student1 = [[Student alloc] init];
    Student *student2 = [[Student alloc] init];
    Student *student3 = [[Student alloc] init];
    Student *student4 = [[Student alloc] init];
    Student *student5 = [[Student alloc] init];
    Student *student6 = [[Student alloc] init];
    Student *student7 = [[Student alloc] init];
    Student *student8 = [[Student alloc] init];
    Student *student9 = [[Student alloc] init];
    Student *student10 = [[Student alloc] init];
    Student *student11 = [[Student alloc] init];
    Student *student12 = [[Student alloc] init];
    Student *student13 = [[Student alloc] init];
    Student *student14 = [[Student alloc] init];
    Student *student15 = [[Student alloc] init];

    student1.name = @"Vasya";
    student1.lastName = @"Vasilyev";
    student1.greetingPhrase = @"Hello, i'm Vasya!";
    
    student2.name = @"Petya";
    student2.lastName = @"Petuchov";
    student2.greetingPhrase = @"Hello, i'm Petya!";
    
    student3.name = @"Kolya";
    student3.lastName = @"Nikolaev";
    student3.greetingPhrase = @"Hello, i'm Kolya!";
    
    student4.name = @"Sasha";
    student4.lastName = @"Sashin";
    student4.greetingPhrase = @"Hello, i'm Sasha!";
    
    student5.name = @"Rocki";
    student5.lastName = @"Fortin";
    student5.greetingPhrase = @"Hello, i'm Rocki!";
    
    student6.name = @"Vlad";
    student6.lastName = @"Listyev";
    student6.greetingPhrase = @"Hello, i'm Vlad!";
    
    student7.name = @"Dima";
    student7.lastName = @"Korablev";
    student7.greetingPhrase = @"Hello, i'm Dima!";
    
    student8.name = @"Georgij";
    student8.lastName = @"Graydkin";
    student8.greetingPhrase = @"Hello, i'm Georgij!";
    
    student9.name = @"Anatoliy";
    student9.lastName = @"Pokrishkin";
    student9.greetingPhrase = @"Hello, i'm Anatoliy!";
    
    student10.name = @"Vasya";
    student10.lastName = @"Petrov";
    student10.greetingPhrase = @"Hello, i'm Vasya!";
    
    student11.name = @"Fedor";
    student11.lastName = @"Konope";
    student11.greetingPhrase = @"Hello, i'm Fedor!";
    
    student12.name = @"Richard";
    student12.lastName = @"Gir";
    student12.greetingPhrase = @"Hello, i'm Richard!";
    
    student13.name = @"Stiven";
    student13.lastName = @"Sigal";
    student13.greetingPhrase = @"Hello, i'm Stiven!";
    
    student14.name = @"Johnny";
    student14.lastName = @"Dep";
    student14.greetingPhrase = @"Hello, i'm Johnny!";
    
    student15.name = @"Roy";
    student15.lastName = @"Johns";
    student15.greetingPhrase = @"Hello, i'm Roy!";
    
    NSDictionary *dictionary = [[NSDictionary alloc] initWithObjectsAndKeys:
                                 student15, [student15.name stringByAppendingString:student15.lastName],
                                 student14, [student14.name stringByAppendingString:student14.lastName],
                                 student13, [student13.name stringByAppendingString:student13.lastName],
                                 student12, [student12.name stringByAppendingString:student15.lastName],
                                 student11, [student11.name stringByAppendingString:student11.lastName],
                                 student10, [student10.name stringByAppendingString:student10.lastName],
                                 student9, [student9.name stringByAppendingString:student9.lastName],
                                 student8, [student8.name stringByAppendingString:student8.lastName],
                                 student7, [student7.name stringByAppendingString:student7.lastName],
                                 student6, [student6.name stringByAppendingString:student6.lastName],
                                 student5, [student5.name stringByAppendingString:student5.lastName],
                                 student4, [student4.name stringByAppendingString:student4.lastName],
                                 student3, [student3.name stringByAppendingString:student3.lastName],
                                 student2, [student2.name stringByAppendingString:student2.lastName],
                                 student1, [student1.name stringByAppendingString:student1.lastName],
                                 nil];
    
    
    NSArray *keysArray = [dictionary allKeys]; //create array for keys dictionary
    
    NSLog(@"Неотсортированный массив: ");
    
    for (id key in keysArray)
    {
        Student *object = [dictionary objectForKey:key];
        NSLog(@"%@", object.greetingPhrase);
    }
    
    NSLog(@"-------------------------------------------");

    
    NSSortDescriptor *arrayDescName =
    [NSSortDescriptor sortDescriptorWithKey:nil ascending:YES selector:@selector(localizedCaseInsensitiveCompare:)];

    NSSortDescriptor *arrayDescLastName =
    [NSSortDescriptor sortDescriptorWithKey:nil ascending:YES selector:@selector(localizedCaseInsensitiveCompare:)];

    
    NSArray *sortedArray = [keysArray sortedArrayUsingDescriptors:[NSArray arrayWithObjects:arrayDescName, arrayDescLastName, nil]];
    
    NSLog(@"Отсортированный массив: ");
    
    for (id key in sortedArray)
    {
        Student *object = [dictionary objectForKey:key];
        NSLog(@"%@", object.greetingPhrase);
    }
    
//    NSMutableArray * arrayDict = [[NSMutableArray alloc] init];
//    
//
//    for (NSString* key in [dictionary allKeys]) //пройти по всем ключам dictionary
//    {
//        id obj = [dictionary objectForKey:key];  // присвоить obj объект любого типа dictionary
//        [arrayDict addObject:obj];              //добавляем объекты из dictionary в массив
//    }
//    
   
    
    
    
    
    /*************    Создаем объект для сортировки (не понимаю пока как он работает)   **********************/
//    NSSortDescriptor* sortDescriptor = [NSSortDescriptor sortDescriptorWithKey:
//                                        nil ascending:NO selector:@selector(localizedCompare:)];
   
//    NSLog(@"Неотсортированный массив: %@", arrayDict);
    
//    [arrayDict sortUsingDescriptors:[NSArray arrayWithObject:sortDescriptor]];
//
//    NSLog(@"Отсортированный массив: %@", arrayDict);
    
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
