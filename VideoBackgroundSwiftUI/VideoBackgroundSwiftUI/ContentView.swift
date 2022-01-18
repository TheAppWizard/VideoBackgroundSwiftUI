//
//  ContentView.swift
//  VideoBackgroundSwiftUI
//
//  Created by Shreyas Vilaschandra Bhike on 17/01/22.

//  MARK: Instagram
//  TheAppWizard
//  theappwizard2408
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            MainView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}




















struct MainView: View {
    
    init() {
          UIPageControl.appearance().currentPageIndicatorTintColor = .white
          UIPageControl.appearance().pageIndicatorTintColor = UIColor.white.withAlphaComponent(0.2)
         }
       
       @State var selectedPage = 0
       @State private var showLogin = false
       @State private var offsetValue = false
   
    var body: some View {
        ZStack{
            PlayerView()
                .edgesIgnoringSafeArea(.all)
            

            RoundedRectangle(cornerRadius: 20)
                .frame(width: 500, height: 320)
                .foregroundColor(.black.opacity(0.1))
                .blur(radius: 2)
                .offset(x: 0, y: 320)
            
            VStack{
                Image("travel2")
                    .resizable()
                    .frame(width: 320, height: 160)
                    .offset(x: 2, y: 25)
                
                Spacer()
            }.padding(20)
            
            
            ZStack{
                TabView(selection: $selectedPage)
                {
                ForEach(0..<testData.count){
                    index in CardView(card : testData[index]).tag(index)
                    }
                }
              .tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
            }.offset(x: 0, y: 30)
            .padding(30)
            
            
            if (selectedPage == 3)
                        {
                
                ZStack{
                           LoginBoard()
                
                            ZStack{
                                Button(action : {
                                              selectedPage += 1
                                          })
                                          {
                                              Text("LOGIN")
                                                   .foregroundColor(.black)
                                          }
                                  } .offset(x: 130, y: 420)
                
                
                            ZStack{
                                Button(action : {
                                              selectedPage += 1
                                          })
                                          {
                                              Text("BACK")
                                                   .foregroundColor(.gray)
                                          }
                                 } .offset(x: -135, y: 420)
                
                }.offset(x: 0, y: offsetValue ? 0 : 300)
                .onAppear {
                        withAnimation(Animation.default.repeatCount(1)) {
                          offsetValue.toggle()
                      }
                }
            }
       }
  }
}

