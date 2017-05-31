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

    @IBAction func openYandexNavi(_ sender: UIButton) {
        
        DeepLinker.Maps.YandexMaps.open(latitude: 55.885452,
                                        longitude: 37.670545,
                                        openAppStoreIfNeeded: true)
        
    }

}
