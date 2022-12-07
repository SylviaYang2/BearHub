//
//  CustomCell.swift
//  BearHub
//
//  Created by Sylvia Yang on 12/5/22.
//

import SwiftUI

struct CustomCell: View {
    var imageName: String
    var itemName: String
    var price: Int
    
    var body: some View {
        HStack {
            Image(imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 40, height: 40)
            
            Text(itemName).padding(.leading)
            Spacer()
            Text(String(price))
        }
    }
}
