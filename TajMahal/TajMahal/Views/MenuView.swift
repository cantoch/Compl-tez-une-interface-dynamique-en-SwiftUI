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
                        RowView(dish: apetizer)
                            .background(
                                NavigationLink {
                                    DetailView(dish: apetizer)
                                } label: { EmptyView()
                                }
                            )
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
                        RowView(dish: mainCourse)
                            .background(
                                NavigationLink {
                                    DetailView(dish: mainCourse)
                                } label: { EmptyView()
                                }
                            )
                            .listRowSeparator(.hidden)
                            .listRowBackground(Color.clear)
                    }
                }
                .navigationTitle(Text("Menu"))
            }
            .listRowSpacing(-10)
            //.listSectionSpacing(0)
        }
    }
}

#Preview {
    MenuView()
}
