//
//  SettingsView.swift
//  Gamergrid
//
//  Created by user2 on 02/02/24.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
                    
            VStack {
                HStack {
                    Text("More")
                        .font(.title)
                        .fontWeight(.bold)
                    Spacer()
                }
                .padding(.vertical, getRelativeHeight(20))
                .padding(.horizontal, 10)
                .background(ColorContants.TopTitleBar)
                .foregroundColor(.white)
                
                Text("We can keep your settings safe so you can sync them across device or retrieve them when you get a new device.")
                    .foregroundColor(.white)
                    .padding(20)
                Spacer()
            }
        }
    }
}

#Preview {
    SettingsView()
}
