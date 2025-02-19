//
//  LineView.swift
//  TajMahal
//
//  Created by Renaud Leroy on 14/02/2025.
//

import SwiftUI

struct LineView: View {
    let imageName: String
    let leftText: String
    let rightText: String
    
    var body: some View {
        HStack {
            Image(imageName)
                .frame(width: 12, height: 12)
            Text(leftText)
            Spacer()
            Text(rightText)
            
        }
        .foregroundColor(Color(red: 0.4, green: 0.4, blue: 0.4)) // #666666)
        .font(.custom("PlusJakartaSans-semiBold", size: 12))
    }
}

#Preview {
    LineView(imageName: "Horaire", leftText: "Mardi", rightText: "")
}
