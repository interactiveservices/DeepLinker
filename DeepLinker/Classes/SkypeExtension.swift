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
            
            guard let url = URL(string:"skype:\(contact)?\(type.rawValue)") else {
                print("Invalid contact passed")
                return
            }
            
            if UIApplication.shared.canOpenURL(URL(string:"skype:")!) {
                
                UIApplication.shared.openURL(url)
                
            } else {
                
                if InfoPlistFinder.isQuerySchemeExists(for: "skype") {
                    if openAppStoreIfNeeded {
                        openAppStorePage()
                    }
                }
                
            }
        }
        
        public static func openAppStorePage() {
            switch UIDevice.current.userInterfaceIdiom {
            case .pad:
                UIApplication.shared.openURL(URL(string:"https://itunes.apple.com/us/app/skype-for-ipad/id442012681?mt=8")!)
            case .phone:
                UIApplication.shared.openURL(URL(string:"https://itunes.apple.com/us/app/skype-for-iphone/id304878510?mt=8")!)
            default: break
            }
        }
        
    }
    
}
