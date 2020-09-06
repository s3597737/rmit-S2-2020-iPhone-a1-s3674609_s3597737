//
//  CaseModel.swift
//  CovidTracker
//
//  Created by KT on 2020/9/6.
//  Copyright © 2020 The Riders. All rights reserved.
//

import UIKit
import GoogleMaps

enum CaseType
{
	case Confirmed
	case Recovered
	case Dead
	
	var description : String
	{
		switch self
		{
			// Use Internationalization, as appropriate.
			case .Confirmed: return "Confirmed";
			case .Recovered: return "Recovered";
			case .Dead: return "Dead";
		}
	}
}

class CaseModel: NSObject
{
	private var latitude : CLLocationDegrees
	private var longitude : CLLocationDegrees
	private var type : CaseType
	private var updated: String
	
	init(latitude: CLLocationDegrees, longitude: CLLocationDegrees, type: CaseType, updated: String)
	{
		self.latitude = latitude
		self.longitude = longitude
		self.type = type
		self.updated = updated
		
		super.init()
	}
	
	func getLatitude() -> CLLocationDegrees
	{
		return latitude
	}
	
	func getLongitude() -> CLLocationDegrees
	{
		return longitude
	}
	
	func getType() -> CaseType
	{
		return type
	}
	
	func getUpdated() -> String
	{
		return updated
	}
}
