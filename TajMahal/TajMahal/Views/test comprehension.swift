//
//  test comprehension.swift
//  TajMahal
//
//  Created by Renaud Leroy on 19/02/2025.
//

import SwiftUI

struct test_comprehension: View {
    var body: some View {
           NavigationView {
               ScrollView {
                   VStack(alignment: .leading, spacing: 16) {
                       Text("Entrées")
                           .font(.title2)
                           .fontWeight(.bold)
                           .padding(.horizontal)

                 
                       }
                       
                       Text("Plats Principaux")
                           .font(.title2)
                           .fontWeight(.bold)
                           .padding(.horizontal)
                       
                       // Vous pouvez ajouter d'autres plats ici
                   }
                   .padding(.top)
               }
               .navigationTitle("Menu")
               .background(Color(.systemGray6)) // Couleur d'arrière-plan
           }
       }
   


#Preview {
    test_comprehension()
}
