//
//  StickerView.swift
//  TajMahal
//
//  Created by Renaud Leroy on 19/02/2025.
//

import SwiftUI

struct StickerView: View {
    var body: some View {
        VStack {
            HStack {
                Image("Samosas")
                    .resizable()
                    .frame(width: 112, height: 86)
                    .cornerRadius(10)
                    .padding(.horizontal, 12)
                VStack(alignment: .leading) {
                    Text("Samosas aux légumes")
                        .font(.custom("PlusJakartaSans-semibold",size: 14))
                        .foregroundColor(Color(red: 0.4, green: 0.4, blue: 0.4)) // #666666)
                    Spacer()
                    Text("Délicieux chaussons frits garnis de légumes épicés")
                        .font(.custom("PlusJakartaSans-regular",size: 12))
                        .foregroundColor(Color(red: 0.4, green: 0.4, blue: 0.4)) // #666666)
                    Spacer()
                    HStack {
                        Text("5,50€")
                            .font(.custom("PlusJakartaSans-semiBold",size: 12))
                            .foregroundColor(Color(red: 0.4, green: 0.4, blue: 0.4)) // #666666)
                        Spacer()
                        Image("")
                    }
                }
                .frame(height: 86)
            }
            .frame(width: 335, height: 110)
            .cornerRadius(10)
            .padding()
            .background(Color(red: 1, green: 1, blue: 1))
        }
    }
}

#Preview {
    StickerView()
}



/*
 import SwiftUI

 struct StickerView: View {
     var body: some View {
         VStack {
             HStack {
                 Image("Samosas")
                     .resizable()
                     .frame(width: 112, height: 86)
                     .cornerRadius(10)
                     .padding(.horizontal, 12)
                 VStack(alignment: .leading) {
                     Text("Samosas aux légumes")
                         .font(.custom("PlusJakartaSans-semibold",size: 14))
                         .foregroundColor(Color(red: 0.4, green: 0.4, blue: 0.4)) // #666666)
                     Spacer()
                     Text("Délicieux chaussons frits garnis de légumes épicés")
                         .font(.custom("PlusJakartaSans-regular",size: 12))
                         .foregroundColor(Color(red: 0.4, green: 0.4, blue: 0.4)) // #666666)
                     Spacer()
                     HStack {
                         Text("5,50€")
                             .font(.custom("PlusJakartaSans-semiBold",size: 12))
                             .foregroundColor(Color(red: 0.4, green: 0.4, blue: 0.4)) // #666666)
                         Spacer()
                         Image("")
                     }
                 }
                 .frame(height: 86)
             }
             .frame(width: 335, height: 110)
             .cornerRadius(10)
             .padding()
             .background(Color(red: 1, green: 1, blue: 1))
         }
     }
 }

 #Preview {
     StickerView()
 }

 */
