//
//  ViewController.swift
//  TabBarKullanimi
//
//  Created by Sude İnce on 5.10.2024.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let tabItems = tabBarController?.tabBar.items{
            let anasayfaItem = tabItems[0]
            let ayarlarItem = tabItems[1]
            anasayfaItem.badgeValue = "3"
            ayarlarItem.badgeValue = "Yeni"
        }
       
        let appearance = UITabBarAppearance()
        appearance.backgroundColor = UIColor.systemGreen
        
        renkDegistir(itemAppearance: appearance.stackedLayoutAppearance)
        renkDegistir(itemAppearance: appearance.inlineLayoutAppearance)
        renkDegistir(itemAppearance: appearance.compactInlineLayoutAppearance)
        
        tabBarController?.tabBar.standardAppearance = appearance
        tabBarController?.tabBar.scrollEdgeAppearance = appearance
    }
    
    func renkDegistir(itemAppearance:UITabBarItemAppearance) {
        // Seçili Durum
        itemAppearance.selected.iconColor = UIColor.systemBlue
        itemAppearance.selected.titleTextAttributes = [.foregroundColor: UIColor.systemPurple]
        itemAppearance.selected.badgeBackgroundColor = UIColor.red
        // Seçili Olmayan Durum
        itemAppearance.normal.iconColor = UIColor.white
        itemAppearance.normal.titleTextAttributes = [.foregroundColor: UIColor.white]
        itemAppearance.normal.badgeBackgroundColor = UIColor.lightGray
    }


}

