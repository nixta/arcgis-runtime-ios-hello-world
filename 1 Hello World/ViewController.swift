//
//  ViewController.swift
//  1 Hello World
//
//  Created by Nicholas Furness on 1/27/15.
//  Copyright (c) 2015 Nicholas Furness. All rights reserved.
//

import UIKit
import ArcGIS

class ViewController: UIViewController {

    @IBOutlet weak var mapView: AGSMapView!
    
    let webMap = AGSWebMap(itemId: "e371d8a5dcbd4fc68555c79cf087fb1e", credential: nil)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        self.webMap.openIntoMapView(self.mapView)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

