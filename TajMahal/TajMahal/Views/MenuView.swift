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
        
        NavigationStack {
            List  {
                Section(header: Text("Entrées")
                    .textCase(.none)
                    .frame(width: 335, alignment: .leading)
                    .font(.custom("PlusJakartaSans-Bold", size: 14))
                    .foregroundColor(Color(red: 0.4, green: 0.4, blue: 0.4))) // #666666)
                {
                    ForEach(viewModel.apetizerArray, id: \.self) { apetizer in
                        NavigationLink(destination: DetailView(dish: apetizer)) {
                            RowView(dish: apetizer)
                        }
                        .listRowSeparator(.hidden)
                        .listRowBackground(Color.clear)
                    }
                }
                Section(header: Text("Plats Principaux")
                    .textCase(.none)
                    .frame(width: 335, alignment: .leading)
                    .font(.custom("PlusJakartaSans-Bold", size: 14))
                    .foregroundColor(Color(red: 0.4, green: 0.4, blue: 0.4))) // #666666)
                {
                    ForEach(viewModel.mainCourseArray, id: \.self) { mainCourse in
                        NavigationLink(destination: DetailView(dish: mainCourse)) {
                            RowView(dish: mainCourse)
                        }
                        .listRowSeparator(.hidden)
                        .listRowBackground(Color.clear)
                    }
                    .navigationTitle(Text("Menu"))
                }
            }
            .frame(maxWidth: .infinity)
            .listRowSpacing(-12)
        }
    }
}


#Preview {
    MenuView()
}
