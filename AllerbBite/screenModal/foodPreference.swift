//
//  foodPreference.swift
//  screenModal
//
//  Created by student on 25/04/24.
//

import Foundation
import UIKit

struct Category{
    var images: String
    var subhead: String
}


var category:[Category]=[
    Category(images: "image1", subhead: "Vegetarian"),
    Category(images: "image2", subhead: "Non-Vegetarian")
]

struct Preference{
    var images: UIImage!
    var subhead: String
}

var preference:[Preference]=[
    Preference(images: UIImage(named: "image3.jpg"), subhead: "Gluten free"),
    Preference(images: UIImage(named: "image4.jpg"), subhead: "Sugar free"),
    Preference(images: UIImage(named: "image5.jpg"), subhead: "Dairy free"),
    Preference(images: UIImage(named: "image6.jpg"), subhead: "High protein food"),
    Preference(images: UIImage(named: "image7.jpg"), subhead: "High in fibre"),
    Preference(images: UIImage(named: "image8.jpg"), subhead: "Peanut free")
]
