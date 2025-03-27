//
//  DetailView.swift
//  TajMahal
//
//  Created by Renaud Leroy on 14/02/2025.
//

import SwiftUI

struct DetailView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    let viewModel: ViewModel = ViewModel()
    
    let dish: Dish
    
    var body: some View {
        
        VStack {
            ZStack {
                Image(dish.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(maxWidth: 360, maxHeight: 467)
                    .cornerRadius(10)
                HStack {
                    switch dish.spiceLevel {
                    case .light:
                        SpicyLightView()
                    case .medium:
                        SpicyMediumView()
                    case .hot:
                        SpicyHotView()
                    }
                }
                .offset(x: 130, y: -210)
            }
            VStack (alignment: .leading) {
                Text("Allergènes:")
                    .padding(.vertical, 10)
                    .font(.custom("PlusJakartaSans-Bold", size: 12))
                Text(String(dish.allergens))
                    .font(.custom("PlusJakartaSans-regular", size: 12))
                    .padding(.bottom, 10)
                Divider()
                Text("Ingrédients:")
                    .padding(.vertical, 10)
                    .font(.custom("PlusJakartaSans-Bold", size: 12))
                Text(String(dish.ingredients))
                    .font(.custom("PlusJakartaSans-regular", size: 12))
            }
            .foregroundColor(Color(red: 0.4, green: 0.4, blue: 0.4)) // #666666)
        }
        .padding(18)
        .navigationBarBackButtonHidden()
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }) {
                    Image(systemName: "chevron.backward")
                        .foregroundColor(Color(red: 0.2, green: 0.2, blue: 0.2)) // #333333)
                }
            }
            ToolbarItem(placement: .navigationBarLeading) {
                Text(dish.name)
                    .font(.custom("PlusJakartaSans-Bold", size: 18))
            }
        }
        Spacer()
    }
}

#Preview {
    DetailView(dish: Dish (name: "Samosas aux légumes", description: "Délicieux chaussons frits garnis de légumes épicés", allergens: "Farine de blé", ingredients: "Mélange de légumes (pommes de terre, petits pois, carottes), épices indiennes, pâte à samosa, huile", spiceLevel: .light, imageName: "Samosas", price: 10.50))
}

