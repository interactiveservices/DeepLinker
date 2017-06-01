//
//  NavigatorExtension.swift
//  Pods
//
//  Created by Alex Shubin on 31.05.17.
//
//

import Foundation
import MapKit

public enum MapOption {
    case showPoint
    case buildRoute
}

extension DeepLinker {
    
    public struct Maps {
        
        public var latitude:Double
        public var longitude:Double
        public var option:MapOption
        
        public init(latitude:Double,
                    longitude:Double,
                    option:MapOption = .showPoint) {
            
            self.latitude = latitude
            self.longitude = longitude
            self.option = option
        }
        
        func openMaps(appName: String, link: String, storeLink: String) {
            
            let url = URL(string: link)!
            
            if UIApplication.shared.canOpenURL(url) {
                
                UIApplication.shared.openURL(url)
                
            } else if InfoPlistFinder.isQuerySchemeExists(for: appName) {
                
                UIApplication.shared.openURL(URL(string: storeLink)!)
                
            }
        }
        
        public func openYandexMaps() {
            
            var param:String
            switch option {
            case .buildRoute:
                param = "rtext=\(latitude),\(longitude)"
            case .showPoint:
                param = "pt=\(longitude),\(latitude)"
            }
            
            openMaps(
                appName: "yandexmaps",
                link: "yandexmaps://maps.yandex.ru/?\(param)",
                storeLink: "https://itunes.apple.com/ru/app/yandex.maps/id313877526?mt=8"
            )
        }
        
        public func openYandexNavi() {
            
            var param:String
            switch option {
            case .buildRoute:
                param = "build_route_on_map?lat_to=\(latitude)&lon_to=\(longitude)"
            case .showPoint:
                param = "show_point_on_map?lat=\(latitude)&lon=\(longitude)"
            }
            
            openMaps(
                appName: "yandexnavi",
                link: "yandexnavi://\(param)",
                storeLink: "https://itunes.apple.com/ru/app/yandex.navigator/id474500851"
            )
        }
        
        public func openGoogleMaps() {
            
            var param:String
            switch option {
            case .buildRoute:
                param = "daddr"
            case .showPoint:
                param = "q"
            }
            
            openMaps(
                appName: "comgooglemaps",
                link: "comgooglemaps://?\(param)=\(latitude),\(longitude)",
                storeLink: "https://itunes.apple.com/us/app/google-maps-navigation-transit/id585027354?mt=8"
            )
        }
        
        public func openAppleMaps(description: String? = nil) {
            
            var param:[String:Any]
            switch option {
            case .buildRoute:
                param = [MKLaunchOptionsDirectionsModeKey : MKLaunchOptionsDirectionsModeDriving]
            case .showPoint:
                param = [:]
            }
            
            let coordinate = CLLocationCoordinate2DMake(latitude, longitude)
            let mapItem = MKMapItem(placemark: MKPlacemark(coordinate: coordinate, addressDictionary:nil))
            mapItem.name = description
            mapItem.openInMaps(launchOptions: param)
            
            
        }
        
    }
    
}
