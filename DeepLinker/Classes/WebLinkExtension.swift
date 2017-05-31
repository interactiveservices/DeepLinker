//
//  WebLinkExtension.swift
//  Pods
//
//  Created by Alex Shubin on 31.05.17.
//
//

import UIKit
import SafariServices

extension UIViewController {
    
    public func presentSafariViewController(with url: URL) {
        
        if #available(iOS 9.0, *) {
            let safariVC = SFSafariViewController(url: url)
            self.present(safariVC, animated: true)
        } else {
            UIApplication.shared.openURL(url)
        }
        
    }
    
}
