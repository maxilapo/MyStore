//
//  TabBarViewController.swift
//  MyStore
//
//  Created by Maxime Lapointe on 2024-05-09.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        setupTabs()

    }

    private func setupTabs() {

        let productListVC = createNavigationBar(with: "Products", and: UIImage(systemName: "list.bullet"), vc: ProductListViewController())

        let profileVC = createNavigationBar(with: "Profile", and: UIImage(systemName: "person.fill"), vc: ProfileViewController())

        let settingsVC = createNavigationBar(with: "Settings", and: UIImage(systemName: "gearshape.fill"), vc: SettingsTableViewController())

//        let productListVC = ProductListViewController()
//        productListVC.tabBarItem.image = UIImage(systemName: "list.bullet")

//        let profileVC = ProfileViewController()
//        profileVC.tabBarItem.image = UIImage(systemName: "person.fill")
//
//        let settingsVC = SettingsTableViewController()
//        settingsVC.tabBarItem.image = UIImage(systemName: "gearshape.fill")


        setViewControllers([productListVC, profileVC, settingsVC], animated: true)
    }

    private func createNavigationBar(with title: String,
                                     and image: UIImage?,
                                     vc: UIViewController) -> UINavigationController {

        let navBar = UINavigationController(rootViewController: vc)

        navBar.tabBarItem.title = title
        navBar.tabBarItem.image = image

        navBar.viewControllers.first?.navigationItem.title = title

        return navBar
    }
}
