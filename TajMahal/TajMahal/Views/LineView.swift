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
                .padding(.vertical, 2.0)
            Text(leftText)
                .font(.custom("Plus Jakarta", size: 14))
                .padding(.vertical, 2.0)
            Spacer()
            Text(rightText)
                .font(.custom("Plus Jakarta", size: 14))
                .padding(.vertical, 2.0)
        }
    }
}

#Preview {
    LineView(imageName: "Horloge", leftText: "Mardi", rightText: "")
}
