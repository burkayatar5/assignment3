//
//  ViewController.swift
//  assignment3
//
//  Created by Burkay Atar on 18.08.2022.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.navigationItem.title = "VW Polo"
        
        let appearance = UINavigationBarAppearance()
        
        appearance.backgroundColor = UIColor(named: "BackgroundColor")
        appearance.titleTextAttributes = [.foregroundColor: UIColor(named: "TextColor")!, .font: UIFont(name: "Montserrat", size: 22)!]
        
        navigationController?.navigationBar.barStyle = .black
        navigationController?.navigationBar.standardAppearance = appearance
        navigationController?.navigationBar.compactAppearance = appearance
        navigationController?.navigationBar.scrollEdgeAppearance = appearance
        
        var menuItems: [UIAction] {
            return [
                UIAction(title: "Add Favorite", image: UIImage(systemName: "heart"), handler: { (_) in
                }),
                UIAction(title: "Share", image: UIImage(systemName: "square.and.arrow.down"), handler: { (_) in
                }),
                UIAction(title: "Reserve a car", image: UIImage(systemName: "car"), handler: { (_) in
                }),
                UIAction(title: "Report Problem", image: UIImage(systemName: "exclamationmark.triangle"), attributes: .destructive, handler: { (_) in
                })
            ]
        }
        
        var barButtonMenu: UIMenu {
            return UIMenu(title: "Options",
                          image: UIImage(systemName: "questionmark.circle")?.withTintColor(UIColor(named: "TextColor")!),
                          identifier: nil, options: [], children: menuItems)
        }
        //-TODO: withTintColor method not working
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "", image: UIImage(systemName: "line.3.horizontal", withConfiguration: UIImage.SymbolConfiguration(scale: .large))!.withTintColor(UIColor(named: "TextColor")!), primaryAction: nil, menu: barButtonMenu)
        
    }
}

