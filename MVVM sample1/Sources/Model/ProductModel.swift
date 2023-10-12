//
//  ProductModel.swift
//  MVVM sample1
//
//  Created by Manohar on 10/2/23.
//

import Foundation

struct Products: Codable {
    
    let products: [ProductModel]
    let total: Int
    
}
struct ProductModel: Codable {

     let title: String
     let description: String
     let price: Int
      
}
