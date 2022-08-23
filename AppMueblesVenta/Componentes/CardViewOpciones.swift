//
//  CardViewOpciones.swift
//  AppMueblesVenta
//
//  Created by Edgar Narvaez on 08/08/22.
//

import SwiftUI

struct CardViewOpciones: View {
    var opciones:OpCuenta
    var body: some View {
        ZStack{
            Rectangle().fill(Color("gris")).frame(width: .infinity, height: 50).cornerRadius(30)
            NavigationLink(destination : DetailsView(opciones: opciones)){
                HStack{
                    HStack(alignment: .firstTextBaseline){
                        Image(systemName: opciones.icon).foregroundColor(Color(opciones.color))
                        Text(opciones.name)
                    }.padding(.horizontal)
                    Spacer()
                    
                    
                }
            }
        }
    }
}

struct DetailsView: View {
    var opciones:OpCuenta
    var body: some View {
        Text(opciones.name)
    }
}


