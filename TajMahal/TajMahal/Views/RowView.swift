//
//  StickerView.swift
//  TajMahal
//
//  Created by Renaud Leroy on 19/02/2025.
//

import SwiftUI

struct RowView: View {
    
    let dish: Dish
    
    var body: some View {
        VStack {
            HStack {
                Image(dish.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 112, height: 86)
                    .cornerRadius(10)
                    .padding(.horizontal, 12)
                    
                VStack(alignment: .leading) {
                    Text(dish.name)
                        .font(.custom("PlusJakartaSans-semibold",size: 14))
                        .foregroundColor(Color(red: 0.4, green: 0.4, blue: 0.4)) // #666666)
                        .frame(maxWidth: 171, alignment: .leading)
                    Spacer()
                    Text(dish.description)
                        .font(.custom("PlusJakartaSans-regular",size: 12))
                        .foregroundColor(Color(red: 0.4, green: 0.4, blue: 0.4)) // #666666)
                        .multilineTextAlignment(.leading)
                        .frame(maxWidth: 180, alignment: .leading)
                    Spacer()
                    HStack {
                        Text(String(format: "%.2f€", dish.price))
                            .font(.custom("PlusJakartaSans-semiBold",size: 12))
                            .foregroundColor(Color(red: 0.4, green: 0.4, blue: 0.4)) // #666666)
                        Spacer()
                        switch dish.spiceLevel {
                        case .light:
                            SpicyLightView()
                                .padding(.horizontal, 14)
                        case .medium:
                            SpicyMediumView()
                                .padding(.horizontal, 14)
                        case .hot:
                            SpicyHotView()
                                .padding(.horizontal, 14)
                        }
                    }
                }
                .frame(height: 86)
            }
            .frame(width: 335, height: 110)
            .background(Color(red: 1, green: 1, blue: 1))
            .cornerRadius(10)
        }
    }
}


#Preview {
    RowView(dish: Dish (name: "Samosas aux légumes", description: "Délicieux chaussons frits garnis de légumes épicés", allergens: "Farine de blé", ingredients: "Mélange de légumes (pommes de terre, petits pois, carottes), épices indiennes, pâte à samosa, huile", spiceLevel: .light, imageName: "Samosas", price: 5.50))
}

/*
import SwiftUI

struct StickerView: View {
    
    let dish: Dish
    /*
     let imageName: String
     let name: String
     let description: String
     */
    var body: some View {
        VStack {
            HStack {
                Image(dish.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 112, height: 86)
                    .cornerRadius(10)
                    .padding(.horizontal, 12)
                    
                VStack(alignment: .leading) {
                    Text(dish.name)
                        .font(.custom("PlusJakartaSans-semibold",size: 14))
                        .foregroundColor(Color(red: 0.4, green: 0.4, blue: 0.4)) // #666666)
                    Spacer()
                    Text(dish.description)
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
            .background(Color(red: 1, green: 1, blue: 1))
            .cornerRadius(10)
        }
    }
}
*/
