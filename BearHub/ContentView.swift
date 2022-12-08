//
//  ContentView.swift
//  BearHub
//
//  Created by Annie Lin on 12/7/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack(alignment: .leading, spacing: 20) {
            HStack(alignment: .top){
                Image("armchair2")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 400, height: 400)
            }
            
            VStack(alignment: .leading, spacing: 5) {
                
                HStack {
                    Text("Item Name")
                        .bold().font(.system(size: 40))
                    
                    Spacer()
                    
                    LikeButton()
                }
                
                Text("$00.00").font(.system(size: 30))
                Text("Description of the item. Lorem ipsum dolor sit amet, consectetur adipiscing.")
            }
            .padding(.leading)
            
            
            Divider()
            
            VStack(alignment: .leading) {
                HStack {
                    Image("armchair2")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 120, height: 120)
                        .clipShape(Circle())
                    

                    Spacer()
                        .frame(width: 20)
                    
                    VStack(alignment: .leading, spacing: 5) {
                        Text("Seller Name")
                            .bold().font(.system(size: 25))
                        Text("@username")
                        Text("Biography of the seller. Lorem ipsum dolor sit amet, consectetur adipiscing.")
                    }
                }
            }
            .padding(.leading)
            
        }
        .padding()
    }
}

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
