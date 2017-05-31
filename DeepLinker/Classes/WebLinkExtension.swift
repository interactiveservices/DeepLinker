//
//  WebLinkExtension.swift
//  Pods
//
//  Created by Alex Shubin on 31.05.17.
//
//

import UIKit
import SafariServices

extension DeepLinker {
    
    public enum WebLink {
    
        public func presentSafariViewController(for viewController: UIViewController, with url: URL) {
            
            if #available(iOS 9.0, *) {
                let safariVC = SFSafariViewController(url: url)
                viewController.present(safariVC, animated: true)
            } else {
                UIApplication.shared.openURL(url)
            }
            
        }
        
    }
    
}
