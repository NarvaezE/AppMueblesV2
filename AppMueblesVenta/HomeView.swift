//
//
//import SwiftUI
//
//struct HomeView: View {
//    
//    var body: some View {
//        NavigationView {
//            VStack{
//                
//                
//                Image("banner_home").resizable().aspectRatio(contentMode: .fit).padding(.horizontal,30)
//                
//                CategoriesView()
//                
//                ScrollView(.horizontal,showsIndicators: false) {
//                    HStack (spacing:16){
//                        VStack(alignment: .leading){
//                            ZStack {
//                                NavigationLink(destination: ProductsView())
//                                {
//                                Image("sillon")
//                                    .resizable()
//                                    .aspectRatio(contentMode: .fit)
//                                }
//                            }
//                            VStack(alignment: .leading){
//                                Text("New").font(.subheadline).foregroundColor(Color("main_color"))
//                                Text("Saloon Chair").fontWeight(.medium)
//                                Text("$150")
//                            }.padding()
//                        }.frame(width: 200,height: 300)
//                            .background(Color("gris"))
//                            .cornerRadius(20.0)
//                            .shadow(color: Color.black.opacity(0.02), radius: 16, x: 16, y: 16)
//                        HomeProductsView(name: "Arm Chair", img: "arm_chair", price: 140)
//                        HomeProductsView(name: "Garden Chair", img: "gard_chair", price: 80)
//                        HomeProductsView(name: "Garden Chair", img: "gard_chair", price: 80)
//                        HomeProductsView(name: "Garden Chair", img: "gard_chair", price: 80)
//                        
//                    }.padding(.horizontal)
//                }
//                
//                Spacer()
//            }.navigationBarTitle("Home").navigationBarTitleDisplayMode(.inline).toolbar(content: {
//                ToolbarItem(placement: .navigationBarLeading){
//                    Button {
//                        
//                    }label:{
//                        Label("salir",systemImage: "line.2.horizontal.decrease.circle")
//                            .labelStyle(.iconOnly)
//                    }
//                }
//                ToolbarItem(placement: .navigationBarTrailing){
//                    Button {
//                        
//                    }label:{
//                        Label("salir",systemImage: "viewfinder")
//                            .labelStyle(.iconOnly)
//                    }
//                }
//                ToolbarItem(placement: .navigationBarTrailing){
//                    Button {
//                        
//                    }label:{
//                        Label("salir",systemImage: "magnifyingglass")
//                            .labelStyle(.iconOnly)
//                    }
//                }
//            })
//        }
//    }
//}
//
//struct HomeView_Previews: PreviewProvider {
//    static var previews: some View {
//        HomeView()
//    }
//}
//
//var tabs = ["Trending Now","Sofa","Table","Chairs"]
//
//struct CategoryBtn: View {
//    var text:String
//    @Binding var selected: String
//     var body: some View {
//         Button(action: {
//             selected = text
//         }) {
//             Text(text).fontWeight(.medium)
//                 .foregroundColor(selected == text ? .white: .black)
//                 .padding(10)
//                 .padding(.horizontal)
//                 .background(ZStack{
//                     if (selected == text) {Color("main_color")}
//                     else{
//                         Color("gris")
//                     }
//                 })
//                 .cornerRadius(30)
//             .shadow(color: Color.black.opacity(0.16), radius: 16, x: 4, y: 4)
//         }
//    }
//}
//
//struct CategoriesView: View {
//    @State var selected_tab = tabs[0]
//    var body: some View {
//        ScrollView(.horizontal,showsIndicators: false) {
//            HStack {
//                ForEach(tabs, id:\.self) { tab in
//                    CategoryBtn(text: tab,selected:$selected_tab)
//                }
//            }.padding(.vertical)
//        }
//    }
//}
//
//struct HomeProductsView: View {
//    var name: String
//    var img:String
//    var price:Int
//    var body: some View {
//        VStack(alignment: .leading){
//            ZStack {
//                Image(img)
//                    .resizable()
//                    .aspectRatio(contentMode: .fit)
//            }
//            VStack(alignment: .leading){
//                Text("New").font(.subheadline).foregroundColor(Color("main_color"))
//                Text(name).fontWeight(.medium)
//                Text("$\(price)")
//            }.padding()
//        }.frame(width: 200,height: 300)
//            .background(Color("gris"))
//            .cornerRadius(20.0)
//            .shadow(color: Color.black.opacity(0.02), radius: 16, x: 16, y: 16)
//    }
//}
