//
//  Card.swift
//  VideoBackgroundSwiftUI
//
//  Created by Shreyas Vilaschandra Bhike on 17/01/22.
//

import SwiftUI
import Foundation


struct Card: Identifiable {
    var id  = UUID()
    var image : String
    var title : String
    var description : String
    
}

var testData:[Card] = [

     
 Card( image: "",title: "Select Your Destiny", description: "Choose your destination, plan your tour. Select the fabulous place for your holiday"),

 Card(image: "", title: "Schedule Your Trip", description: "Choose the date and get your ticket. We give you the best price"),
 
 Card( image: "",title: "Enjoy Your Holidays", description: "Enjoy the holiday! Don't forget to take awesome pictures and share with your friends."),
 
 
 
 Card( image: "",title: "", description: ""),
 

]


