//
//  SharedHomeDataModel.swift
//  AppMueblesVenta
//
//  Created by Edgar Narvaez on 22/08/22.
//

import SwiftUI

class SharedHomeDataModel: ObservableObject {
    //Detail product data
    @Published var detailHomeProduct: Productos?
    @Published var showDetailHomeProducts: Bool = false
    @Published var showHome: Bool = false
    @Published var fromSearchPage:Bool = false
    
    //Liked products
    @Published var likedProducts:[Productos] = []
    
    //cart products
    @Published var cartProducts: [Productos] = []
    
    func getTotalPrice()->String{
        var total: Int = 0
        
        cartProducts.forEach { product in
            let price = product.price.replacingOccurrences(of: "$", with: "") as NSString
            
            let quantity = product.quantity
            let priceTotal = quantity * price.integerValue
            
            total += priceTotal
            
        }
        return "\(total)"
    }
    
}

