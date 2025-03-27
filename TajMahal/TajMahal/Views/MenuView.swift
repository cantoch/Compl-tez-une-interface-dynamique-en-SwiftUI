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
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        NavigationStack {
            List  {
                Section(header: Text("Entrées")
                    .textCase(.none))
                {
                    ForEach(viewModel.apetizerArray, id: \.self) { apetizer in
                        RowView(dish: apetizer)
                            .background(
                                NavigationLink {
                                    DetailView(dish: apetizer)
                                } label: { EmptyView()
                                }
                            )
                    }
                }
                Section(header: Text("Plats Principaux")
                    .textCase(.none))
                {
                    ForEach(viewModel.mainCourseArray, id: \.self) { mainCourse in
                        RowView(dish: mainCourse)
                            .background(
                                NavigationLink {
                                    DetailView(dish: mainCourse)
                                } label: { EmptyView()
                                }
                            )
                    }
                }
            }
            .foregroundColor(Color(red: 0.4, green: 0.4, blue: 0.4)) // #666666)
            .listRowBackground(Color.clear)
            .listRowSpacing(15)
            .listRowSeparator(.hidden)
            .navigationBarTitleDisplayMode(.inline)
            .font(.custom("PlusJakartaSans-Bold", size: 14))
            .navigationBarBackButtonHidden()
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: {
                        presentationMode.wrappedValue.dismiss()
                    }) {
                        Image(systemName: "chevron.backward")
                    }
                    .foregroundColor(Color(red: 0.2, green: 0.2, blue: 0.2)) // #333333)
                }
                ToolbarItem(placement: .principal) {
                    Text("Menu")
                        .font(.custom("PlusJakartaSans-Bold", size: 18))
                }
            }
        }
    }
}
#Preview {
    MenuView()
}
