//
//  CardView.swift
//  AppMueblesVenta
//
//  Created by Edgar Narvaez on 05/08/22.
//

import SwiftUI

struct CardView: View {
    var order:Orders
    var body: some View {
        ZStack{
            Rectangle().fill(Color("gris")).frame(width: .infinity, height: 150)
            VStack{
                
                HStack {
                    Image(systemName: "checkmark.circle.fill").foregroundColor(Color("main_color")).font(.system(size: 20))
                    VStack(alignment: .leading,spacing: 8){
                        Text("Order *\(order.order_no)").fontWeight(.semibold)
                        Text("Placed on \(order.placed)").font(.subheadline)
                        HStack{
                            Text("Items: \(order.items)").font(.subheadline)
                            Text("Total: $\(order.total)").font(.subheadline)
                        }
                    }.padding(.horizontal).padding(.bottom)
                    Image(systemName: "smallcircle.filled.circle").foregroundColor(Color("main_color")).font(.system(size: 20))
                    
                }
                HStack(spacing:40){
                    Text("Order delivered")
                    
                    Text(order.delivered)
                }.padding(.horizontal)
            }
        }.padding(.horizontal,10)
    }
}


