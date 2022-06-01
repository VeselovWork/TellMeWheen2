//
//  ViewController.swift
//  TellMeWhene2
//
//  Created by Andrey on 16.04.2022.
//

import UIKit

class MainTabBarController: UITabBarController {
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupTabBar()
    
       //view.backgroundColor = .red
        
    }
    
    func setupTabBar(){
        
        let scheduleViewController = createNavController(vc: ScheduleViewController(), itemName: "Schedule", ItemImage: "calendar.badge.clock")
        
        let tasksViewController = createNavController(vc: TasksViewController(), itemName: "Tasks", ItemImage: "text.badge.checkmark")
        
        let contactsViewController = createNavController(vc: ContactsViewController(), itemName: "Contacts", ItemImage: "person.crop.rectangle.stack")
        
        viewControllers = [scheduleViewController, tasksViewController, contactsViewController]
        
    }
    
    func createNavController(vc: UIViewController, itemName: String, ItemImage: String) -> UINavigationController {
        
        let item = UITabBarItem(title: itemName, image: UIImage(systemName: ItemImage)?.withAlignmentRectInsets(.init(top: 50, left: 0, bottom: 0, right: 0)),tag: 0)
       item.titlePositionAdjustment = .init(horizontal: 0, vertical: 10)
        
        let navController = UINavigationController(rootViewController: vc)
        
        navController.tabBarItem = item
        
        return navController
    }


}

