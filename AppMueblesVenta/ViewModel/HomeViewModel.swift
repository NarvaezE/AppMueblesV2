//
//  HomeViewModel.swift
//  AppMueblesVenta
//
//  Created by Edgar Narvaez on 19/08/22.
//

import SwiftUI

class HomeViewModel: ObservableObject{
    @Published var productType: ProductTypeHome = .TrendingNow
    
    //Productos de ejemplo
    @Published var products:[Productos] = [

        Productos(type: .Chairs, title: "Saloon Chair", price: "$120", color: "red", quantity: 1, rate: "4", productImg: "sillon"),
        Productos(type: .Sofa, title: "Garden Sofa", price: "$160", color: "brown", quantity: 1, rate: "4", productImg: "gard_chair"),
        Productos(type: .Chairs, title: "Saloon Chair", price: "$140", color: "red", quantity: 1, rate: "4", productImg: "sillon"),
        Productos(type: .TrendingNow, title: "Saloon Chair", price: "$140", color: "red", quantity: 1, rate: "4", productImg: "sillon"),
        Productos(type: .TrendingNow, title: "Saloon Chair", price: "$140", color: "red", quantity: 1, rate: "4", productImg: "sillon"),
        Productos(type: .Sofa, title: "Saloon Chair", price: "$120", color: "red", quantity: 1, rate: "4", productImg: "sillon"),
        Productos(type: .Table, title: "Saloon Chair", price: "$120", color: "red", quantity: 1, rate: "4", productImg: "sillon"),
        Productos(type: .Table, title: "Saloon Chair", price: "$120", color: "red", quantity: 1, rate: "4", productImg: "sillon"),
        Productos(type: .TrendingNow, title: "Saloon Chair", price: "$140", color: "red", quantity: 1, rate: "4", productImg: "sillon"),
        Productos(type: .Chairs, title: "Saloon Chair", price: "$140", color: "red", quantity: 1, rate: "4", productImg: "arm_chair"),
        Productos(type: .Sofa, title: "Arm Chair", price: "$140", color: "red", quantity: 1, rate: "4", productImg: "sillon"),
        Productos(type: .TrendingNow, title: "Saloon Chair", price: "$140", color: "red", quantity: 1, rate: "4", productImg: "sillon")
    ]
    
    @Published var filteredProductsHome: [Productos] = []
    init(){
        filterProductsHome()
    }
    func filterProductsHome(){
        DispatchQueue.global(qos: .userInteractive).async {
            let results = self.products
            
                .lazy
                .filter{product in
                        return product.type == self.productType
                }
                .prefix(4)
            DispatchQueue.main.async {
                self.filteredProductsHome = results.compactMap({product in
                    return product
                })
            }
        }
    }
}
