//
//  YandexMapsExtension.swift
//  Pods
//
//  Created by Alex Shubin on 31.05.17.
//
//

import Foundation

extension DeepLinker.Maps.YandexMaps {
    
    public static var canOpen:Bool {
        
        let url = URL(string:"yandexmaps:")!
        
        if UIApplication.shared.canOpenURL(url) {
            
            return true
            
        } else {
            
            InfoPlistFinder.isQuerySchemeExists(for: "yandexmaps")
            return false
        }
        
    }
    
    @discardableResult
    public static func open(latitude: Double, longitude: Double, openAppStoreIfNeeded: Bool = false) -> Bool {
        
        let url = URL(string:"yandexmaps://maps.yandex.ru/?pt=\(longitude),\(latitude)")!
        
        if UIApplication.shared.canOpenURL(url) {
            
            UIApplication.shared.openURL(url)
            return true
            
        } else {
            
            if InfoPlistFinder.isQuerySchemeExists(for: "yandexmaps")
                && openAppStoreIfNeeded {
                openAppStorePage()
            }
            return false
        }
        
    }
    
    public static func openAppStorePage() {
        UIApplication.shared.openURL(URL(string:"https://itunes.apple.com/ru/app/yandex.maps/id313877526?mt=8")!)
    }
}
