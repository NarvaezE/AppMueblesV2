//
//  CartView.swift
//  AppMueblesVenta
//
//  Created by Edgar Narvaez on 01/08/22.
//

import SwiftUI

struct CartView: View {
    var body: some View {
        NavigationView {
            VStack{
                HStack{
                    Text("25").font(.system(size: 35)).padding(.leading)
                    Text("% OFF").font(.system(size: 20))
                    Text("|").font(.system(size: 45))
                    Text("use code Wooden \nat Checkout").font(.system(size: 20)).padding(.trailing)
                }.frame(width: .infinity, height: 100).background(Color("salmon")).cornerRadius(20)
                HStack{
                    Image("sillon").resizable().aspectRatio(contentMode: .fit)
                    VStack(alignment: .leading, spacing: 8){
                        Text("Saloon Chair")
                        Text("$150.00")
                    }
                    Text("1").frame(width: 50, height: 30).background(Color.white).cornerRadius(10).padding(.trailing).padding(.leading)
                }.frame(width: .infinity, height: 100).background(Color("gris")).cornerRadius(20)
                HStack{
                    Image("gard_chair").resizable().aspectRatio(contentMode: .fit)
                    VStack(alignment: .leading, spacing: 8){
                        Text("Wood Chair")
                        Text("$100.00")
                    }
                    Text("1").frame(width: 50, height: 30).background(Color.white).cornerRadius(10).padding(.trailing).padding(.leading)
                }.frame(width: .infinity, height: 100).background(Color("gris")).cornerRadius(20)
                HStack{
                    Image("gard_chair").resizable().aspectRatio(contentMode: .fit)
                    VStack(alignment: .leading, spacing: 8){
                        Text("Wood Chair")
                        Text("$100.00")
                    }
                    Text("1").frame(width: 50, height: 30).background(Color.white).cornerRadius(10).padding(.trailing).padding(.leading)
                }.frame(width: .infinity, height: 100).background(Color("gris")).cornerRadius(20)
                HStack {
                    Text("Total:").font(.system(size: 20))
                    Text("$200.00").font(.system(size: 25)).fontWeight(.semibold)
                    Spacer()
                }.padding(.horizontal,40)
                Spacer()
                NavigationLink(
                    destination: MainView().navigationBarHidden(true),
                    label: {
                        Text("Checkout").font(.system(size: 20))
                            .fontWeight(.semibold)
                            .foregroundColor(Color.white)
                            .padding(22)
                            .padding(.horizontal,122)
                            .background(Color("main_color")
                                .cornerRadius(40))
                    }
                )
                
            }.navigationBarTitle("Cart").navigationBarTitleDisplayMode(.inline).toolbar(content: {
                ToolbarItem(placement: .navigationBarLeading){
                    Button {
                        
                    }label:{
                        Label("salir",systemImage: "arrow.left")
                            .labelStyle(.iconOnly)
                    }
                }
                
        })
        }
    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView()
    }
}
