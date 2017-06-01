//
//  MapsViewController.swift
//  DeepLinker
//
//  Created by Alex Shubin on 31.05.17.
//  Copyright © 2017 CocoaPods. All rights reserved.
//

import UIKit
import DeepLinker

class MapsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    var maps = DeepLinker.Maps(latitude: 55.885452, longitude: 37.670545, option: .buildRoute)
    
    @IBAction func openYandexMaps(_ sender: UIButton) {
        
        maps.openYandexMaps()
    }
    
    @IBAction func openYandexNavi(_ sender: UIButton) {
        
        maps.openYandexNavi()
    }

    @IBAction func openAppleMaps(_ sender: UIButton) {
        
        maps.openAppleMaps()
    }
    
    @IBAction func openGoogleMaps(_ sender: UIButton) {
        
       maps.openGoogleMaps()
    }
    
    @IBAction func buildRouteChanged(_ sender: UISwitch) {
        
        if sender.isOn {
            maps.option = .buildRoute
        } else {
            maps.option = .showPoint
        }
        
    }
    
}
