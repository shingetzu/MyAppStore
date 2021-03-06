//
//  BaseTabBarController.swift
//  MyAppStore
//
//  Created by Jonathan Go on 2019/04/25.
//  Copyright © 2019 Appdelight. All rights reserved.
//

import UIKit

class BaseTabBarController: UITabBarController {

  override func viewDidLoad() {
    super.viewDidLoad()
    
    viewControllers = [
      createNavController(viewController: TodayController(), title: "Today", imageName: "today_icon"),
      createNavController(viewController: AppsPageController(), title: "APPS", imageName: "apps"),
      createNavController(viewController: AppsSearchController(), title: "Search", imageName: "search")
    ]
  }
    
  fileprivate func createNavController(viewController: UIViewController, title: String, imageName: String) -> UIViewController {
    
    let navController = UINavigationController(rootViewController: viewController)
    
    viewController.view.backgroundColor = .white
    viewController.navigationItem.title = title
    
    navController.tabBarItem.image = UIImage(named: imageName)
    navController.tabBarItem.title = title
    navController.navigationBar.prefersLargeTitles = true
    
    return navController
  }
  

}
