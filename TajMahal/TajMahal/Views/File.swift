//
//  File.swift
//  TajMahal
//
//  Created by Renaud Leroy on 26/02/2025.
//


            ZStack {
                Form {
                }
                .frame(width: 74, height: 22)
                .cornerRadius(11)
                HStack  {
                    Image("piment_rouge")
                    Image("piment_gris")
                    Image("piment_gris")
                }
            }
            .frame(width: 58, height: 14)
        }
    }
}

#Preview {
    SpicyLightView()
}
