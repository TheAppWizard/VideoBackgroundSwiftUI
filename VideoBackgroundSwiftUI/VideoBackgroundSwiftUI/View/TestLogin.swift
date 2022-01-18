//
//  TestLogin.swift
//  VideoBackgroundSwiftUI
//
//  Created by Shreyas Vilaschandra Bhike on 17/01/22.
//

import SwiftUI

struct TestLogin: View {
    var body: some View {
        ZStack{
            Color.black.opacity(0.5).edgesIgnoringSafeArea(.all)
            
            LoginBoard()
        }
    }
}

struct TestLogin_Previews: PreviewProvider {
    static var previews: some View {
        TestLogin()
    }
}


struct LoginBoard: View {
    
    @State  var login = ""
    @State  var password = ""
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 35)
                .frame(width: 425, height: 320)
                .foregroundColor(.white)
            
            VStack{
                    HStack{
                            Text("Hello ,")
                            .foregroundColor(.gray)
                            .fontWeight(.bold)
                            .font(.system(size: 35))
                        
                           Spacer().frame(width: 240, height: 0)
                           }
                    HStack {
                            Image(systemName: "person").foregroundColor(.black)
                               .padding()
                             Text(login)
                               .frame(width: 280, height: 50, alignment: .center)
                           }.overlay(RoundedRectangle(cornerRadius: 8).stroke(Color.gray, lineWidth: 1))
                
               Spacer().frame(width: 0, height: 10)
                           
                    HStack {
                             Image(systemName: "key").foregroundColor(.black)
                               .padding()
                             Text(password)
                               .frame(width: 280, height: 50, alignment: .center)
                           }.overlay(RoundedRectangle(cornerRadius: 8).stroke(Color.gray, lineWidth: 1))
                
                
                Spacer().frame(width: 0, height: 60)
                       }
         
            
        }.offset(x: 0, y: 320)
    }
}
