//
//  Orders.swift
//  AppMueblesVenta
//
//  Created by Edgar Narvaez on 05/08/22.
//

import Foundation
struct Orders:Identifiable{
    let id = UUID()
    let order_no : Int
    let placed : String
    let items : Int
    let total : Int
    let delivered : String

}

extension Orders{
    static let order = [
        Orders(order_no: 44989, placed: "December 15,2022", items: 10, total: 567, delivered: "Jan 10,2022"),
        Orders(order_no: 44990, placed: "December 15,2022", items: 5, total: 378, delivered: "Jan 11,2022"),
        Orders(order_no: 44997, placed: "December 17,2022", items: 13, total: 623, delivered: "Jan 15,2022"),
        Orders(order_no: 44998, placed: "December 17,2022", items: 2, total: 50, delivered: "Jan 15,2022")
    ]
}
