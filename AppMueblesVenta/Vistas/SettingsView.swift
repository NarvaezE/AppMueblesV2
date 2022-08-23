//
//  SettingsView.swift
//  AppMueblesVenta
//
//  Created by Edgar Narvaez on 08/08/22.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        VStack {
            Text("Settings")
        }.navigationTitle("Account")
            .toolbar{
                ToolbarItemGroup(placement: .navigationBarLeading){
                    Button(action: {
                        print("hola mundo")
                    }){
                        Image(systemName: "arrow.left")
                    }
                }
            }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
