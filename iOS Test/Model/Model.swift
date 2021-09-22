//
//  Model.swift
//  iOS Test
//
//  Created by Ali Ezzeldin on 2021-09-20.
//

import Foundation
import UIKit

struct AvailableCars {
    let name: String
    let model: String
    let office: String
    let year: String
    let logo: UIImage
}

var selectedName : String = ""
var selectedModel : String = ""
var selectedYear: String = ""

var availableCars : [AvailableCars] = []
var carModelsArr : [AvailableCars] = []
var carYearArr : [AvailableCars] = []
