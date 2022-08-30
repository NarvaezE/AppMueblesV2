//
//  ExploreView.swift
//  AppMueblesVenta
//
//  Created by Edgar Narvaez on 01/08/22.
//

import SwiftUI

struct ExploreView: View {
    @State private var toggleSelection: Bool = true
    
    @State private var showPopover = false
    @State private var buttonPressed: String?
    var body: some View {
        NavigationView {
            VStack{
                
                ExploreCatView()
                
                Text("Top Categories (17)").padding(.trailing,210).font(.system(size: 23))
                
                ScrollView(.vertical) {
                    LazyVGrid(columns: [GridItem(.fixed(200)),GridItem(.fixed(200))],content: {
                        VStack(alignment: .leading){
                            ZStack {
//                                NavigationLink(destination: ProductsView())
//                                {
                                Image("sillon")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
//                                }
                            }
                            VStack(alignment: .leading){
                                Text("New").font(.subheadline).foregroundColor(Color("main_color")) 
                                Text("Arm Chair").fontWeight(.medium)
                                Text("$150")
                            }.padding()
                        }.frame(width: 200,height: 300)
                            .background(Color("gris"))
                            .cornerRadius(20.0)
                            .shadow(color: Color.black.opacity(0.02), radius: 16, x: 16, y: 16)
//                        NavigationLink(destination:ProductsView()){
//                            HomeProductsView(name: "Arm Chair", img: "arm_chair", price: 140)
//                        }
                        HomeProductsView(name: "Garden Chair", img: "gard_chair", price: 80)
                        HomeProductsView(name: "Garden Chair", img: "gard_chair", price: 80)
                        HomeProductsView(name: "Garden Chair", img: "gard_chair", price: 80)
                        
                    })
                }
                
                Spacer()
            }.navigationBarTitle("Explore").navigationBarTitleDisplayMode(.inline).toolbar(content: {
                ToolbarItem(placement: .navigationBarLeading){
                    Button {
                        
                    }label:{
                        Label("salir",systemImage: "line.2.horizontal.decrease.circle")
                            .labelStyle(.iconOnly)
                    }
                }
                ToolbarItem(placement: .navigationBarTrailing){
                    Button {
                        
                    }label:{
                        Label("salir",systemImage: "viewfinder")
                            .labelStyle(.iconOnly)
                    }
                }
                ToolbarItem(placement: .navigationBarTrailing){
                    Button {
                        
                    }label:{
                        Label("salir",systemImage: "slider.horizontal.3")
                            .labelStyle(.iconOnly)
                    }
                }
            })
            Spacer()
        }
        
    }
}

struct ExploreView_Previews: PreviewProvider {
    static var previews: some View {
        ExploreView()
            .previewDevice("iPhone 11")
    }
}

var tab = ["Categories","Explore","New Arrivals"]

struct ExploreCatBtn: View {
    var texto:String
    @Binding var seleccion: String
     var body: some View {
         Button(action: {
             seleccion = texto
         }) {
             Text(texto).fontWeight(.medium)
                 .foregroundColor(seleccion == texto ? .white: .black)
                 .padding(10)
                 .padding(.horizontal)
                 .background(ZStack{
                     if (seleccion == texto) {Color("main_color")}
                     else{
                         Color("gris")
                     }
                 })
                 .cornerRadius(30)
             .shadow(color: Color.black.opacity(0.16), radius: 16, x: 4, y: 4)
         }
    }
}

struct ExploreCatView: View {
    @State var selectedtb = tab[0]
    var body: some View {
        ScrollView(.horizontal,showsIndicators: false) {
            HStack (spacing:16){
                ForEach(tab, id:\.self) { tb in
                    ExploreCatBtn(texto: tb,seleccion:$selectedtb)
                }
            }.padding(.vertical).padding(.horizontal)
        }
    }
}
