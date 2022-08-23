//
//  OrdersView.swift
//  AppMueblesVenta
//
//  Created by Edgar Narvaez on 03/08/22.
//

import SwiftUI

struct OrdersView: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        
        NavigationView {
            VStack {
                
                OrdersCatView()
                
                ScrollView (.vertical){
                    ForEach(Orders.order){order in
                        CardView(order: order)
                    }
                }
            }.padding().navigationBarTitle("My Orders").navigationBarTitleDisplayMode(.inline).toolbar(content: {
                ToolbarItem(placement: .navigationBarLeading){
                    Button {
                        dismiss()
                    }label:{
                        Label("salir",systemImage: "arrow.left")
                            .labelStyle(.iconOnly)
                    }
                }
                
        })
        }
    }
}

struct OrdersView_Previews: PreviewProvider {
    static var previews: some View {
        OrdersView()
            .previewDevice("iPhone 11")
    }
}

var botones = ["Completed","Pending Order","Canceled"]

struct OrdersBtn: View {
    var titulo:String
    @Binding var select: String
     var body: some View {
         Button(action: {
             select = titulo
         }) {
             Text(titulo).fontWeight(.medium)
                 .foregroundColor(select == titulo ? .white: .black)
                 .padding(10)
                 .padding(.horizontal)
                 .background(ZStack{
                     if (select == titulo) {Color("main_color")}
                     else{
                         Color("gris")
                     }
                 })
                 .cornerRadius(30)
             .shadow(color: Color.black.opacity(0.16), radius: 16, x: 4, y: 4)
         }
    }
}

struct OrdersCatView: View {
    @State var selected_btn = botones[0]
    var body: some View {
        ScrollView(.horizontal,showsIndicators: false) {
            HStack {
                ForEach(botones, id:\.self) { tab in
                    OrdersBtn(titulo: tab,select:$selected_btn)
                }
            }.padding(.vertical)
        }
    }
}
