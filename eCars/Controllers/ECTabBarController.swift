//
//  ViewController.swift
//  eCars
//
//  Created by Luis Salinas  on 8/03/23.
//

import UIKit

class ECTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setUpTabs()
    }

    private func setUpTabs() {
        let carViewController = ECCarViewController()
        carViewController.navigationItem.largeTitleDisplayMode = .automatic
        
        let stationViewController = ECStationViewController()
        stationViewController.navigationItem.largeTitleDisplayMode = .automatic
        
        
        let carNavController = UINavigationController(rootViewController: carViewController)
        carNavController.tabBarItem = UITabBarItem(title: "CARS", image: UIImage(systemName: "car"), tag: 1)
        let stationNavController = UINavigationController(rootViewController: stationViewController)
        stationNavController.tabBarItem = UITabBarItem(title: "STATIONS", image: UIImage(systemName: "fuelpump"), tag: 2)
        
        let navControllers = [carNavController, stationNavController]
        
        for nav in navControllers {
            nav.navigationBar.prefersLargeTitles = true
        }
        
        setViewControllers(navControllers, animated: true)
    }

}

