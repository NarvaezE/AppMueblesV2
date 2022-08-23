//
//  toolbar.swift
//  AppMueblesVenta
//
//  Created by Edgar Narvaez on 09/08/22.
//

import SwiftUI

struct toolbar: View {
    var body: some View {
        NavigationView {
            VStack {
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            }
        }.navigationTitle("Account")
            .toolbar{
                ToolbarItemGroup(placement: .navigationBarLeading){
                    Button(action: {
                        
                    }){
                        Image(systemName: "arrow.left")
                    }
                }
            }
    }
}

struct toolbar_Previews: PreviewProvider {
    static var previews: some View {
        toolbar()
    }
}
