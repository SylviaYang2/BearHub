//
//  ContentView.swift
//  BearHub
//
//  Created by Sylvia Yang on 12/4/22.
//

import SwiftUI

class Items: Identifiable {
    let imageName: String
    let itemName: String
    let price: Int
    
    
    init(imageName: String, itemName: String, price: Int) {
        self.imageName = imageName
        self.itemName = itemName
        self.price = price
    }
}

struct MainView: View {
    @State var textInput: String = ""
    
    var clothes_list = [
        Items(imageName: "sweatshirt", itemName: "Sweatshirts", price: 20),
        Items(imageName: "sweatpant", itemName: "Sweatpants", price: 25),
        Items(imageName: "jacket", itemName: "Jackets", price: 40)
    ]
    var transport_list = [
        Items(imageName: "scooter", itemName: "scooter", price: 200),
        Items(imageName: "skateboard", itemName: "skateboard", price: 200)
    ]
    var textbooks_list = [
        Items(imageName: "textbook", itemName: "Calculus: Early Transcendentals", price: 20),
        Items(imageName: "textbook2", itemName: "Introductory Statistics", price: 15),
    ]
    var furniture_list = [
        Items(imageName: "armchair", itemName: "IKEA Armchair", price: 20),
        Items(imageName: "desk", itemName: "Desk Large", price: 50),
        Items(imageName: "drawer", itemName: "4-drawer", price: 80),
        Items(imageName: "tv unit", itemName: "TV-unit small", price: 5),
    ]
    
    var body: some View {
        
        NavigationView {
        VStack {
            
            HStack {
                Image("search")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 40, height: 40)
                    .padding()
                
                TextField(
                  "Seach Items",
                  text: $textInput
                ).padding(.trailing)
            }
            
            List {
                Section(header: Text("Clothes")) {
                    ForEach(clothes_list) {i in
                        CustomCell(imageName: i.imageName, itemName: i.itemName, price: i.price)
                    }
                }
                
                Section(header: Text("Furniture")) {
                    ForEach(furniture_list) {i in
                        CustomCell(imageName: i.imageName, itemName: i.itemName, price: i.price)
                    }
                }
                
                Section(header: Text("Transportation Vehicles")) {
                    ForEach(transport_list) {i in
                        CustomCell(imageName: i.imageName, itemName: i.itemName, price: i.price)
                    }
                }
                
                Section(header: Text("Textbooks")) {
                    ForEach(textbooks_list) {i in
                        CustomCell(imageName: i.imageName, itemName: i.itemName, price: i.price)
                    }
                }
            }
        }
        .navigationTitle("BearHub")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
