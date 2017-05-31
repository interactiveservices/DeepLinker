//
//  InfoPlistFinder.swift
//  Pods
//
//  Created by Alex Shubin on 31.05.17.
//
//

import Foundation

enum InfoPlistFinder {
    
    @discardableResult
    static func isQuerySchemeExists(for app:String, verbose:Bool = true) -> Bool {
        
        if let infoPlist = Bundle.main.infoDictionary,
            let schemes = infoPlist["LSApplicationQueriesSchemes"] as? [String],
            schemes.contains(app)
        {
            return true
        } else {
            if verbose {
                print("Please put following into your info.plist file:")
                print("<key>LSApplicationQueriesSchemes</key>\n<array>\n<string>\(app)</string>\n</array>")
            }
            return false
        }
    }
    
}
