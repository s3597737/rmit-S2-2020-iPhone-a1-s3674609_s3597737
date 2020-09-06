//
//  ViewController.swift
//  COVID
//
//  Created by KT on 2020/9/5.
//  Copyright © 2020 The Riders. All rights reserved.
//

import UIKit
import GoogleMaps
import GoogleSignIn

class CaseVC: UIViewController
{
	private var cases: [CaseModel] = casesData
	
	override func viewDidLoad()
	{
		super.viewDidLoad()
		
		GIDSignIn.sharedInstance().presentingViewController = self
		GIDSignIn.sharedInstance().signIn()
		
		let camera = GMSCameraPosition.camera(withLatitude: -37.8062327, longitude:144.9632789, zoom: 17.0)
		let mapView = GMSMapView.map(withFrame: self.view.frame, camera: camera)
		mapView.settings.myLocationButton = true
		
		self.view.addSubview(mapView)
		
		for caseModel in cases
		{
			let marker = GMSMarker()
			marker.position = CLLocationCoordinate2D(latitude: caseModel.getLatitude(), longitude: caseModel.getLongitude())
			marker.title = caseModel.getType().description
			marker.snippet = caseModel.getUpdated()
			marker.map = mapView
		}
	}
}
