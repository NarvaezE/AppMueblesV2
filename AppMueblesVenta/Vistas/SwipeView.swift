//
//  SwipeView.swift
//  AppMueblesVenta
//
//  Created by Edgar Narvaez on 01/08/22.
//

import SwiftUI

struct SwipeView: View {
    var body: some View {
        NavigationView {
            VStack{
                HStack{
                    Spacer()
                    NavigationLink(
                        destination: SignInView().navigationBarHidden(true),
                        label: {
                            Text("Skip").padding(.trailing,15).padding(.bottom,40).foregroundColor(Color.black)
                            
                        }
                    ).navigationBarHidden(true)
                }
                TabView{
                    TutorialUnoView()
                    TutorialDosView()
                    TutorialTresView()
                }.tabViewStyle(PageTabViewStyle())
                .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
            NavigationLink(
                destination: SignInView().navigationBarHidden(true),
                label: {
                Text("Get Started").font(.system(size: 20))
                    .fontWeight(.semibold)
                    .foregroundColor(Color.white)
                    .padding()
                
                    .padding(.horizontal,100)
                    .background(Color("main_color")
                        .cornerRadius(40))
                }
            ).navigationBarHidden(true)
                .navigationBarBackButtonHidden(true)
            
            }
        }
    }
}

struct SwipeView_Previews: PreviewProvider {
    static var previews: some View {
        SwipeView()
    }
}
