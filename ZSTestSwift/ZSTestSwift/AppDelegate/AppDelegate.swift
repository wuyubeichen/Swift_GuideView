//
//  AppDelegate.swift
//  ZSTestSwift
//
//  Created by zhoushuai on 2017/7/14.
//  Copyright © 2017年 Zhoushuai. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        //创建App窗口
        self.window = UIWindow(frame: UIScreen.main.bounds)
        self.window?.backgroundColor = UIColor.orange
        self.window?.makeKeyAndVisible()
        //测试界面
        let testVC = TestViewController(nibName:"TestViewController", bundle: nil)
        let testNVC = BaseNavigationViewController(rootViewController: testVC)
        self.window?.rootViewController = testNVC
        
        //测试引导页
        //在当前的window上显示引导页视图
        if (GuideView.needShowGuideView()) {
            let guideImages = ["guideImg0","guideImg1","guideImg2","guideImg3"]
            let guideView = GuideView(images: guideImages, viewType:.GuideViewStyle_DisapperForFinish)
            guideView.showGuideViewToCurrentWindow()
        }
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

