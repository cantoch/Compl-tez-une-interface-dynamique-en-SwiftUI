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
        NavigationStack{
            VStack {
                Image("TajMahal")
            }
            .frame(width: 335, height: 423)
            Spacer()
            HStack{
                VStack(alignment: .leading){
                    Text("Restaurant Indien")
                        .font(.custom("PlusJakartaSans-regular", size: 12))
                        .foregroundColor(Color(red: 0.4, green: 0.4, blue: 0.4)) // #666666
                    Text("Taj Mahal")
                        .fontWeight(.bold)
                        .font(.custom("PlusJakartaSans-regular", size: 18))
                        .foregroundColor(Color(red: 0.2, green: 0.2, blue: 0.2)) // #333333)
                }
                Spacer()
                Image("Logo")
                    .renderingMode(.template)
                    .resizable()
                    .foregroundColor(Color(red: 0.604, green: 0.604, blue: 0.604)) // #9a9a9a)
                    .scaledToFit()
            }
            .frame(width: 335, height: 40)
            Spacer() 
                VStack{
                    LineView(imageName: "Horaire", leftText: "Mardi", rightText: "11h30 - 14h30・ 18h30 - 22h00")
                    Spacer()
                    LineView(imageName: "Service", leftText: "Type de Service", rightText: "À emporter")
                    Spacer()
                    LineView(imageName: "Localisation", leftText: "12  Avenue de la Brique - 75010 Paris", rightText: "")
                    Spacer()
                    LineView(imageName: "Site", leftText: "www.tajmahal.fr", rightText: "")
                    Spacer()
                    LineView(imageName: "Téléphone", leftText: "06 12 34 56 78", rightText: "")
                }
            .frame(width: 337, height: 130)
            Spacer()
            NavigationLink {
                MenuView()
            } label : {
                Text("Accéder au menu")
                    .frame(width: 335, height: 50)
                    .cornerRadius(10)
                    .font(.custom("PlusJakartaSans-bold", size: 16))
                    .foregroundColor(.white)
                    .background(RoundedRectangle(cornerRadius: 10).fill(Color(red: 0.812, green: 0.184, blue: 0.184))) // #cf2f2f
            }
        }
    }
}

#Preview {
    WelcomeView()
}


