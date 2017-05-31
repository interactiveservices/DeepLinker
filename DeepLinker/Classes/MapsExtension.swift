//
//  NavigatorExtension.swift
//  Pods
//
//  Created by Alex Shubin on 31.05.17.
//
//

import Foundation
import MapKit

extension DeepLinker {
    
    public enum Maps {
        
        static func openMaps(appName: String, link: String, storeLink: String) {
            
            let url = URL(string: link)!
            
            if UIApplication.shared.canOpenURL(url) {
                
                UIApplication.shared.openURL(url)
                
            } else {
                
                if InfoPlistFinder.isQuerySchemeExists(for: appName) {
                    UIApplication.shared.openURL(URL(string: storeLink)!)
                }
            }
        }
        
        public enum YandexMaps {
            
            public static func open(latitude: Double, longitude: Double) {
                
                DeepLinker.Maps.openMaps(
                    appName: "yandexmaps",
                    link: "yandexmaps://maps.yandex.ru/?pt=\(longitude),\(latitude)",
                    storeLink: "https://itunes.apple.com/ru/app/yandex.maps/id313877526?mt=8"
                )
            }
            
        }
        
        public enum YandexNavi {
        
            public static func open(latitude: Double, longitude: Double) {
                
                DeepLinker.Maps.openMaps(
                    appName: "yandexnavi",
                    link: "yandexnavi://show_point_on_map?lat=\(latitude)&lon=\(longitude)",
                    storeLink: "https://itunes.apple.com/ru/app/yandex.navigator/id474500851"
                )
            }
            
        }
        
        public enum GoogleMaps {
            
            public static func open(latitude: Double, longitude: Double) {
                
                DeepLinker.Maps.openMaps(
                    appName: "comgooglemaps",
                    link: "comgooglemaps://?center=\(latitude),\(longitude)",
                    storeLink: "https://itunes.apple.com/us/app/google-maps-navigation-transit/id585027354?mt=8"
                )
            }
            
        }
        
        public enum AppleMaps {
            
            public static func open(latitude: Double, longitude: Double, description: String?) {
                
                let coordinate = CLLocationCoordinate2DMake(latitude, longitude)
                let mapItem = MKMapItem(placemark: MKPlacemark(coordinate: coordinate, addressDictionary:nil))
                mapItem.name = description
                mapItem.openInMaps(launchOptions: [:])
                    //[MKLaunchOptionsDirectionsModeKey : MKLaunchOptionsDirectionsModeDriving]
                
            }
            
        }
                    
    }
    
}
