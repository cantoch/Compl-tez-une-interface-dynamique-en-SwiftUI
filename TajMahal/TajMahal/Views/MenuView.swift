//
//  MenuView.swift
//  TajMahal
//
//  Created by Amandine Cousin on 31/10/2023.
//

import SwiftUI

// Menu sous forme de liste
struct MenuView: View {
    // Référence vers le view model qui permet d'accéder aux tableaux d'entrées et de plats du menu
    let viewModel: ViewModel = ViewModel()
    
    var body: some View {
            List {
                Text("Entrées")
                    .font(.custom("PlusJakartaSans-Bold", size: 14))
                    .foregroundColor(Color(red: 0.4, green: 0.4, blue: 0.4)) // #666666)
                    .frame(maxHeight: 18)
                StickerView()
                StickerView()
                Text("Plats Principaux")
                    .font(.custom("PlusJakartaSans-Bold", size: 14))
                    .foregroundColor(Color(red: 0.4, green: 0.4, blue: 0.4)) // #666666)
                    .frame(maxHeight: 18)
                    .padding()
                StickerView()
                StickerView()
                StickerView()
                StickerView()
            }
        }
      /*  .background(Color(red: 0.945, green: 0.945, blue: 0.945)) // #f1f1f1)*/
    }






#Preview {
    MenuView()
}
