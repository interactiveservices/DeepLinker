//
//  PhoneExtension.swift
//  Pods
//
//  Created by Alex Shubin on 31.05.17.
//
//

import Foundation

extension DeepLinker {
    
    public enum Phone {
        
        @discardableResult
        public static func performCall(phoneNumber:String) -> Bool {
            
            let validNumber = String(phoneNumber.characters.filter() {
                "+0123456789".characters.contains($0)
            })
            
            let url = URL(string: "tel://\(validNumber)")!
            
            if isDeviceSupportsPhoneCalls {
                
                UIApplication.shared.openURL(url)
                return true
            } else {
                return false
            }
            
        }
        
        public static var isDeviceSupportsPhoneCalls:Bool {
            
            if UIApplication.shared.canOpenURL(URL(string: "tel:")!) {
                return true
            } else {
                print("Device doesn't support phone calls")
                return false
            }
        }
        
    }
    
}
