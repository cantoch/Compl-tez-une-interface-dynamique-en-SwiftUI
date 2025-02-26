//
//  SpicyMediumViewView.swift
//  TajMahal
//
//  Created by Renaud Leroy on 26/02/2025.
//

import SwiftUI

struct SpicyMediumView: View {
    var body: some View {
        
        ZStack {
            Form {
            }
            .frame(width: 74, height: 22)
            .cornerRadius(11)
            HStack  {
                Image("piment_rouge")
                Image("piment_rouge")
                Image("piment_gris")
            }
            .frame(width: 58, height: 14)
        }
        .frame(width: 74, height: 22)
    }
}


#Preview {
SpicyMediumView()
}
