//
//  LeaguesView.swift
//  Gamergrid
//
//  Created by user2 on 02/02/24.
//

import SwiftUI

struct LeaguesView: View {
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
                    
            VStack {
                HStack {
                    Text("Leagues")
                        .font(.title)
                        .fontWeight(.bold)
                    Spacer()
                }
                .padding(.vertical, getRelativeHeight(20))
                .padding(.horizontal, 10)
                .background(ColorContants.TopTitleBar)
                .foregroundColor(.white)
                
                Spacer()
            }
        }
    }
}

#Preview {
    LeaguesView()
}
