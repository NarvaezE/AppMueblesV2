//
//  LogoText.swift
//  AppMueblesVenta
//
//  Created by Edgar Narvaez on 29/07/22.
//

import SwiftUI

struct LogoText: View {
    var body: some View {
        HStack{
            Text("aco").font(.system(size:100)).fontWeight(.thin)
            Text(".").font(.system(size:100)).foregroundColor(Color.red)
            Spacer()
            
            
        }.padding(.horizontal,30)
    }
}

