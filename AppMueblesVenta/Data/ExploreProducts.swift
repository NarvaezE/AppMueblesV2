//
//  ExploreProducts.swift
//  AppMueblesVenta
//
//  Created by Edgar Narvaez on 17/08/22.
//

import Foundation
struct ProductsExp : Identifiable{
    let id = UUID()
    let img:String
    let name:String
    let price:Int
    

}

extension ProductsExp{
    static let productosExp = [
        ProductsExp(img: "sillon", name: "Saloon Chair", price: 140),
        ProductsExp(img: "gard_chair", name: "Garden Chair", price: 140),
        ProductsExp(img: "arm_chair", name: "Arm Chair", price: 140),
        ProductsExp(img: "gard_chair", name: "Garden Chair", price: 140),
        ProductsExp(img: "gard_chair", name: "Garden Chair", price: 140),
        ProductsExp(img: "gard_chair", name: "Garden Chair", price: 140),
        ProductsExp(img: "gard_chair", name: "Garden Chair", price: 140),
        ProductsExp(img: "gard_chair", name: "Garden Chair", price: 140)
    ]
}

