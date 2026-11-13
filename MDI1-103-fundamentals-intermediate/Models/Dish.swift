//
//  Dish.swift
//  MDI1-103-fundamentals-intermediate
//
//  Created by Jose Eduardo Becerra Flores on 10/11/26.
//

import Foundation

struct Dish: Identifiable {
    var id = UUID()
    var name: String
    var category: String
    var price: Double
    var description: String
    var imageName: String
}
