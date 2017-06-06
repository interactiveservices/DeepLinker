//
//  SettingsExtension.swift
//  Pods
//
//  Created by Alex Shubin on 05.06.17.
//
//

import Foundation

extension DeepLinker {
    
    public enum Settings {
        
        public static func open() {
            UIApplication.shared.openURL(URL(string:UIApplicationOpenSettingsURLString)!)
        }
        
    }
    
}
