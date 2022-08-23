//
//  OpcionesCuenta.swift
//  AppMueblesVenta
//
//  Created by Edgar Narvaez on 05/08/22.
//

import Foundation
struct OpCuenta : Identifiable{
    let id = UUID()
    let icon:String
    let name:String
    let color:String

}

extension OpCuenta{
    static let opciones = [
        OpCuenta(icon: "person", name: "My Account", color: "verde"),
        OpCuenta(icon: "creditcard", name: "Payment", color: "main_color"),
        OpCuenta(icon: "mappin", name: "My Address", color: "azul_claro"),
        OpCuenta(icon: "creditcard", name: "Transactions", color: "main_color"),
        OpCuenta(icon: "bell", name: "Notifications", color: "azul_marino"),
        OpCuenta(icon: "gearshape", name: "Settings", color: "morado"),
        OpCuenta(icon: "map", name: "Live Showroom", color: "verde"),
    ]
}
