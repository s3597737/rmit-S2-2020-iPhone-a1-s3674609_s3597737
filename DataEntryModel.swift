//
//  DataEntryModel.swift
//  COVID
//
//  Created by KT on 2020/9/5.
//  Copyright © 2020 The Riders. All rights reserved.
//

import Foundation

class DataEntryModel : NSObject
{
	private var name : String
	private var latitude : Float
	private var longitude : Float
	private var confirmed : Int
	private var dead : Int
	private var recovered : Int
	private var updated : Date
	
	init(name: String, latitude: Float, longitude: Float, confirmed: Int, dead: Int, recovered: Int, updated: Date)
	{
		self.name = name
		self.latitude = latitude
		self.longitude = longitude
		self.confirmed = confirmed
		self.dead = dead
		self.recovered = recovered
		self.updated = updated
		
		super.init()
	}
}
