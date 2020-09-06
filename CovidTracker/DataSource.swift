//
//  SampleData.swift
//  COVID
//
//  Created by KT on 2020/9/5.
//  Copyright © 2020 The Riders. All rights reserved.
//

import Foundation

let countriesData = [CountryModel(name: "China", cases: 90500, deaths: 4735, recovered: 85261, updated: "2020.09.05 16:52"),
CountryModel(name: "United States", cases: 6389413, deaths: 192132, recovered: 3626272, updated: "2020.09.05 16:52"),
CountryModel(name: "India", cases: 4027718, deaths: 69668, recovered: 3107453, updated: "2020.09.05 16:52"),
CountryModel(name: "Brasil", cases: 4091801, deaths: 125584, recovered: 3278243, updated: "2020.09.05 16:52"),
CountryModel(name: "United Kingdom", cases: 342351, deaths: 41537, recovered: 1756, updated: "2020.09.05 16:52"),
CountryModel(name: "Australia", cases: 26207, deaths: 748, recovered: 22330, updated: "2020.09.05 16:52")]

let casesData = [CaseModel(latitude: -37.805080, longitude: 144.964824, type: CaseType.Confirmed, updated: "4/09/2020 23:55:00"),
				 CaseModel(latitude: -37.806351, longitude: 144.965452, type: CaseType.Confirmed, updated: "4/09/2020 23:55:00"),
				 CaseModel(latitude: -37.805180, longitude: 144.963824, type: CaseType.Dead, updated: "4/09/2020 23:55:00"),
				 CaseModel(latitude: -37.806280, longitude: 144.962824, type: CaseType.Recovered, updated: "4/09/2020 23:55:00")
]
