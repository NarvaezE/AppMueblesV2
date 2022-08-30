//
//  Productos.swift
//  AppMueblesVenta
//
//  Created by Edgar Narvaez on 19/08/22.
//

import SwiftUI

struct Productos:Identifiable,Hashable{
    var id=UUID().uuidString
    var type:ProductTypeHome
    var title:String
    var price:String
    var color:String
    var quantity:Int
    var rate:String
    var productImg:[String] = []
}

enum ProductTypeHome: String,CaseIterable{
    
    case TrendingNow = "Trending Now"
    case Sofa = "Sofa"
    case Table = "Table"
    case Chairs = "Chairs"
}
