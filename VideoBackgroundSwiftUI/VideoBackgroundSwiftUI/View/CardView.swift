//
//  CardView.swift
//  VideoBackgroundSwiftUI
//
//  Created by Shreyas Vilaschandra Bhike on 17/01/22.
//

import SwiftUI

struct CardView: View {
    
    var card : Card
    var body: some View {
        VStack{
            

            Image(card.image)
                .resizable()
                .frame(width: 400, height: 400)
            
            Text(card.title)
                .font(.system(size: 35))
                .fontWeight(.bold)
                .foregroundColor(.white)
                .offset(x: 0, y: 40)
               
            
            Text(card.description)
                .fontWeight(.regular)
                .multilineTextAlignment(.center)
                .font(.system(size: 22))
                .foregroundColor(.white)
                .frame(width: 335, height: 100)
                .offset(x: 0, y: 40)
                .padding(5)
        
        }.padding()
           
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(card: testData[1])
    }
}
