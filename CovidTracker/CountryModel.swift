//
//  DataEntryModel.swift
//  COVID
//
//  Created by KT on 2020/9/5.
//  Copyright © 2020 The Riders. All rights reserved.
//

import Foundation

class CountryModel : NSObject
{
	private var name : String
	private var cases : Int
	private var deaths : Int
	private var recovered : Int
	private var updated : String
	
	init(name: String, cases: Int, deaths: Int, recovered: Int, updated: String)
	{
		self.name = name
		self.cases = cases
		self.deaths = deaths
		self.recovered = recovered
		self.updated = updated
		
		super.init()
	}
	
	func getName() -> String
	{
		return name
	}
	
	func getCases() -> Int
	{
		return cases
	}
	
	func getDeaths() -> Int
	{
		return deaths
	}
	
	func getRecovered() -> Int
	{
		return recovered
	}
}
