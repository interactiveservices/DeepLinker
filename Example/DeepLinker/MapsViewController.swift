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

    @IBAction func openYandexMaps(_ sender: UIButton) {
        
        DeepLinker.Maps.YandexMaps.open(latitude: 55.885452,
                                        longitude: 37.670545)
        
    }
    
    @IBAction func openYandexNavi(_ sender: UIButton) {
        
        DeepLinker.Maps.YandexNavi.open(latitude: 55.885452,
                                        longitude: 37.670545)
        
    }

    @IBAction func openAppleMaps(_ sender: UIButton) {
        
        DeepLinker.Maps.AppleMaps.open(latitude: 55.885452,
                                        longitude: 37.670545,
                                        description: "Test Тест")
        
    }
    
    @IBAction func openGoogleMaps(_ sender: UIButton) {
        
        DeepLinker.Maps.GoogleMaps.open(latitude: 55.885452,
                                        longitude: 37.670545)
        
    }
    
}
