//
//  SkypeExtension.swift
//  Pods
//
//  Created by Alex Shubin on 30.05.17.
//
//

import Foundation

public enum SkypeActionType: String {
    case call  = "call"
    case video = "call&video=true"
    case chat  = "chat"
}

extension DeepLinker {
    
    public enum Skype {
        
        public static func performAction(_ type:SkypeActionType, contact: String, openAppStoreIfNeeded: Bool = false) {
            
            if UIApplication.shared.canOpenURL(URL(string:"skype:")!) {
                
                UIApplication.shared.openURL(URL(string:"skype:\(contact)?\(type.rawValue)")!)
                
            } else {
                
                if let infoPlist = Bundle.main.infoDictionary,
                    let schemes = infoPlist["LSApplicationQueriesSchemes"] as? [String],
                    schemes.contains("skype")
                {
                    
                    if openAppStoreIfNeeded { openAppStorePage() }
                    
                } else {
                 
                    print("Please put following into your info.plist file:")
                    print("<key>LSApplicationQueriesSchemes</key>\n<array>\n<string>skype</string>\n</array>")
                    
                }
                
            }
            
        }
        
        public static func openAppStorePage() {
            UIApplication.shared.openURL(URL(string:"http://itunes.com/apps/skype/skype")!)
        }
        
    }
    
}
