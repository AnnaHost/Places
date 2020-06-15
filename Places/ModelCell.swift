//
//  ModelCell.swift
//  Places
//
//  Created by Анна Гареева on 15.06.2020.
//  Copyright © 2020 Anna Gareeva. All rights reserved.
//

import Foundation


struct ModelCell {
    var name: String
    var location: String
    var image: String
    var type: PlaceType
}


enum PlaceType: String {
    case cafe, restaruant, park
}


