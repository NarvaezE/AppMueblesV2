//
//  TutorialUnoView.swift
//  AppMueblesVenta
//
//  Created by Edgar Narvaez on 29/07/22.
//

import SwiftUI

struct TutorialUnoView: View {
    var body: some View {
        
        NavigationView {
            VStack {
                VStack(alignment: .trailing){
                    
                    
                    HStack{
                        Text("aco").font(.system(size:100)).fontWeight(.thin)
                        Text(".").font(.system(size:100)).foregroundColor(Color("main_color"))
                        Spacer()
                        
                        
                    }.padding(.horizontal,30)
                    
                    Text("Furniture").font(.system(size:40)).fontWeight(.thin).padding(.trailing,240)
                    
                    Image("img_inicio").resizable().aspectRatio(contentMode: .fit).padding(.leading,80)
                    
                }
                Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry.\n ").font(.title3).fontWeight(.light)
                    .padding(.bottom,30)
                
                
                
                Spacer()
            }
        }
    }
}

struct TutorialUnoView_Previews: PreviewProvider {
    static var previews: some View {
        TutorialUnoView()
            .previewDevice("iPhone 11")
    }
}
