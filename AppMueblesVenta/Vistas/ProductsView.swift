//
//  ProductsView.swift
//  AppMueblesVenta
//
//  Created by Edgar Narvaez on 03/08/22.
//

import SwiftUI

struct ProductsView: View {
    
    private let colors: [Color] = [.blue,.brown,.orange,.red,.black]
    init() {
        UIPageControl.appearance().currentPageIndicatorTintColor = .orange
            UIPageControl.appearance().pageIndicatorTintColor = .gray
        }
    
    var body: some View {
        
        NavigationView {
            ZStack {
                Color("fondo").edgesIgnoringSafeArea(.all)
                    
                VStack{
                    TabView{
                        TabView{
                            Image("sillon").resizable().scaledToFit()
                            Image("sillon").resizable().scaledToFit()
                            Image("sillon").resizable().scaledToFit()
                            Image("sillon").resizable().scaledToFit()
                            Image("sillon").resizable().scaledToFit()
                        }.tabViewStyle(PageTabViewStyle()).background(Color("gris")).accentColor(Color("main_color"))
                    }.frame(width: UIScreen.main.bounds.width - 20, height: 250, alignment: .center)
                    ScrollView(.horizontal){
                        HStack{
                            Image("sillon").resizable().frame(width: 80, height: 80).cornerRadius(8).background(Color("gris")).overlay{
                                Rectangle()
                                    .stroke(Color("main_color"))
                            }
                            Image("sillon").resizable().frame(width: 80, height: 80).cornerRadius(8).background(Color("gris"))
                            Image("sillon").resizable().frame(width: 80, height: 80).cornerRadius(8).background(Color("gris"))
                            Image("sillon").resizable().frame(width: 80, height: 80).cornerRadius(8).background(Color("gris"))
                            Image("sillon").resizable().frame(width: 80, height: 80).cornerRadius(8).background(Color("gris"))
                        }
                    }.padding(.horizontal)
                    VStack (alignment: .leading){
                        HStack {
                            Text("GAMMALBYN").font(.system(size: 20)).fontWeight(.semibold)
                            Spacer()
                            Image(systemName: "heart.fill").foregroundColor(.red).frame(width: 30, height: 30).cornerRadius(100).background(Color("gris"))
                        }.padding(.horizontal)
                        Text("Armchair, red").foregroundColor(.gray).padding(.horizontal)
                        Text("300$").font(.system(size: 22)).fontWeight(.bold).foregroundColor(Color("main_color")).padding(.horizontal).padding(.top,5)
                        Text("Color").padding(.horizontal).font(.system(size: 18))
                        HStack(spacing:-1){
                            Spacer()
                            Image(systemName: "star.fill")
                            Image(systemName: "star.fill")
                            Image(systemName: "star.fill")
                            Image(systemName: "star.fill")
                            Image(systemName: "star.fill").foregroundColor(.gray)
                            Text("(24 Review)").font(.system(size: 15))
                            
                        }.font(.system(size: 10)).padding(.horizontal)
                        HStack{
                            ForEach(colors, id:\.self){ color in
                                Circle()
                                    .foregroundColor(color)
                                    .frame(width: 20, height: 20)
                                    
                                    
                            }
                        }.padding(.horizontal).frame(width: .infinity, height: 30).background(Color("gris")).cornerRadius(100)
                    }
                    VStack {
                        HStack{
                            Text("Materials")
                            Spacer()
                            Image(systemName: "chevron.right")
                        }.padding(.horizontal)
                        Divider()
                        HStack{
                            Text("Dimensions")
                            Spacer()
                            Image(systemName: "chevron.right")
                        }.padding(.horizontal)
                    }.padding(.top)
                    
                    Spacer()
                    HStack{
                        NavigationLink(
                            destination: CartView().navigationBarHidden(true),
                            label: {
                                Text("Add to cart").font(.system(size: 15))
                                    .fontWeight(.semibold).frame(width: .infinity, height: 45).padding(.horizontal,30)
                                    .foregroundColor(Color.white)
                                    .background(Color("main_color")
                                        .cornerRadius(40))
                            }
                        ).navigationBarHidden(true)
                            .navigationBarBackButtonHidden(true)
                        
                        NavigationLink(
                            destination: MainView().navigationBarHidden(true),
                            label: {
                                Text("Buy Now").font(.system(size: 15))
                                    .fontWeight(.semibold).frame(width: .infinity, height: 45).padding(.horizontal,30)
                                    .foregroundColor(Color.white)
                                    .background(Color("main_color")
                                        .cornerRadius(40))
                            }
                        ).navigationBarHidden(true)
                            .navigationBarBackButtonHidden(true)
                    }
                }.navigationBarTitle("Products").navigationBarTitleDisplayMode(.inline).toolbar(content: {
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
                            Label("salir",systemImage: "bag")
                                .labelStyle(.iconOnly)
                        }
                    }
                })
                
            }
            
        }
    }
}

struct ProductsView_Previews: PreviewProvider {
    static var previews: some View {
        ProductsView()
            .previewInterfaceOrientation(.portrait)
    }
}
