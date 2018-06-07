//
//  ViewController.swift
//  MapView
//
//  Created by D7703_26 on 2018. 6. 7..
//  Copyright © 2018년 dit. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {

    @IBOutlet weak var myMapView: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //위도, 경도 설정
        //DIT 부산광역시 부산진구 양정동 429-19
        //35.165999, 129.072543
        let loc: CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: 35.165999, longitude: 129.072543)
        //변경
        let span = MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
        
        //region
        let region = MKCoordinateRegion(center: loc, span: span)
        
        //mapkit에 설정
        myMapView.setRegion(region, animated: true)
        
        // annotation 끊기
        let anno = MKPointAnnotation()
        anno.coordinate = loc
        anno.title = "DIT 동의과학대학교"
        anno.subtitle = "내꿈이 자라는 곳"
        myMapView.addAnnotation(anno)
    }



}

