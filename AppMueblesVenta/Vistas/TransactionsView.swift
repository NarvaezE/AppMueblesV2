//
//  TransactionsView.swift
//  AppMueblesVenta
//
//  Created by Edgar Narvaez on 04/08/22.
//

import SwiftUI

struct TransactionsView: View {
    var body: some View {
        NavigationView {
            VStack {
                
                ZStack {
                    Rectangle().fill(Color("main_color")).frame(width: .infinity, height: 170).ignoresSafeArea()
                    VStack {
                        Text("\n")
                        HStack{
                            
                                HStack{
                                    
                                    Image(systemName: "creditcard").foregroundColor(Color("main_color"))
                                    Text("Credit")
                                }.frame(width: 120, height: 35).background(.white).cornerRadius(40).padding()
                                HStack{
                                    Image(systemName: "creditcard").foregroundColor(Color("main_color"))
                                    Text("Debit")
                                }.frame(width: 120, height: 35).background(.white).cornerRadius(40).padding()
                        }
                    }
                }.ignoresSafeArea()
                
                ZStack {
                    Rectangle().fill(Color("gris")).frame(width: .infinity, height: 120).cornerRadius(20).ignoresSafeArea().padding(.horizontal,20)
                    HStack{
                        Image(systemName: "creditcard").foregroundColor(Color("main_color")).font(.system(size: 30)).frame(width: 70, height: 70, alignment: .center)
                            .background(Color("salmon")) .cornerRadius(100).padding(.trailing)
                        
                        VStack(alignment: .leading, spacing: 0){
                            Text("Total Transactions\n").font(.body).fontWeight(.semibold)
                            Text("$1057.00").font(.system(size: 20)).fontWeight(.semibold)
                        }
                    }
                }
                
                
                
                Spacer()
                
            }.navigationBarTitle("Transactions").navigationBarTitleDisplayMode(.inline).toolbar(content: {
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

struct TransactionsView_Previews: PreviewProvider {
    static var previews: some View {
        TransactionsView()
    }
}
