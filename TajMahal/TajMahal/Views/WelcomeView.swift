//
//  WelcomeView.swift
//  TajMahal
//
//  Created by Amandine Cousin on 31/10/2023.
//

import SwiftUI

// Page d'accueil
struct WelcomeView: View {
    var body: some View {
        
            VStack{
            Image("TajMahal")
                .resizable()
                .scaledToFit()
                .padding(.bottom)
                .padding(.leading)
                .padding(.trailing)
            HStack(alignment: .top){
                VStack(alignment: .leading){
                    Text("Restaurant Indien")
                    Text("Taj Mahal")
                        .fontWeight(.bold)
                }
                Spacer()
                Image("Logo")
                    .renderingMode(.template)
                    .resizable()
                    .foregroundColor(Color.gray)
                    .scaledToFit()
                    .frame(width: 40, height: 40)
            }
            .padding(.horizontal)
            .padding(.bottom)
            
        }
        VStack{
            LineView(imageName: "", leftText: "Mardi", rightText: "11h30 - 14h30 · 18h30 - 22h00 ")
            LineView(imageName: "", leftText: "Type de Service", rightText: "À emporter")
            LineView(imageName: "", leftText: "12  Avenue de la Brique - 75010 Paris", rightText: "")
            LineView(imageName: "", leftText: "www.tajmahal.fr", rightText: "")
            LineView(imageName: "", leftText: "06 12 34 56 78", rightText: "")
        }
        .padding(.leading)
        .padding(.trailing)
        Spacer()
        NavigationLink {
                MenuView()
        } label : {
                Text("Accéder au menu")
                    .frame(width: 335, height: 50)
                    .cornerRadius(10)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .background(RoundedRectangle(cornerRadius: 10).fill(Color(red: 0.811, green: 0.183, blue: 0.183)))
                }
            }
        }
#Preview {
    WelcomeView()
}
