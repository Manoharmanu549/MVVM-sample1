//
//  ProductViewModel.swift
//  MVVM sample1
//
//  Created by Manohar on 10/2/23.
//
import Foundation

class ProductViewModel {
    var products = [ProductModel]()
    
    func getProducts(completion: @escaping () -> Void) {
        let urlString = "https://dummyjson.com/products"
        
        NetworkManager.fetchData(urlString: urlString) { products, error in
            if let error = error {
                // Handle the error
                print("Error: \(error)")
            } else if let products = products {
                // Handle the fetched products
                self.products = products
            }
            
            // Call the completion handler to signal the completion of the operation
            completion()
        }
    }
}


