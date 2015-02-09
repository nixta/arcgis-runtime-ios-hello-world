//
//  ViewController.swift
//  1 Hello World
//
//  Created by Nicholas Furness on 1/27/15.
//  Copyright (c) 2015 Nicholas Furness. All rights reserved.
//

import UIKit
import ArcGIS

class ViewController: UIViewController, AGSMapViewLayerDelegate, AGSLayerDelegate {

    @IBOutlet weak var mapView: AGSMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        // Add a basemap layer
        let basemapUrl = "http://services.arcgisonline.com/ArcGIS/rest/services/World_Topo_Map/MapServer"
        let basemap = AGSTiledMapServiceLayer(URL: NSURL(string: basemapUrl))
        
        self.mapView.addMapLayer(basemap, withName: "Basemap")
        
        let centerPoint = AGSPoint(x: -77.0455, y:38.9067, spatialReference: AGSSpatialReference.wgs84SpatialReference())
        self.mapView.zoomToScale(61315, withCenterPoint: centerPoint, animated: true)
        
        // Add a feature layer
        let layerURL = "http://maps2.dcgis.dc.gov/dcgis/rest/services/DCGIS_DATA/Transportation_WebMercator/MapServer/11"
        let fLayer = AGSFeatureLayer(URL: NSURL(string: layerURL), mode: AGSFeatureLayerMode.OnDemand)
        
        self.mapView.addMapLayer(fLayer, withName: "CCTV Cameras")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

