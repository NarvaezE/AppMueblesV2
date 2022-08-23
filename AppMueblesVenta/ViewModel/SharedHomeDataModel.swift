//
//  SharedHomeDataModel.swift
//  AppMueblesVenta
//
//  Created by Edgar Narvaez on 22/08/22.
//

import SwiftUI

class SharedHomeDataModel: ObservableObject {
    
    @Published var detailHomeProduct: Productos?
    @Published var showDetailHomeProducts: Bool = false
}

