//
//  MatchesView.swift
//  Gamergrid
//
//  Created by user2 on 02/02/24.
//

import SwiftUI

struct MatchesView: View {
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
                    
            VStack {
                HStack {
                    Image("MainLogo")
                        .resizable()
                        .frame(width: getRelativeWidth(145.0),
                               height: getRelativeHeight(32.0))
                        .scaledToFit()
                        .clipped()
                    
                    Spacer()
                    
                    HStack(alignment: .top, spacing: getRelativeWidth(15)) {
                        Button(action: {}, label: {
                            Image(systemName: "clock.badge")
                                .resizable()
                                .frame(width: getRelativeWidth(25), height: getRelativeWidth(25))
                        })
                        
                        Button(action: {}, label: {
                            Image(systemName: "magnifyingglass")
                                .resizable()
                                .frame(width: getRelativeWidth(25), height: getRelativeWidth(25))
                        })
                        
                        Button(action: {}, label: {
                            Image(systemName: "calendar")
                                .resizable()
                                .frame(width: getRelativeWidth(25), height: getRelativeWidth(25))
                        })
                    }
                }
                .padding(.top, getRelativeHeight(20))
                .padding(.horizontal, 10)
                
                Spacer()
            }
            
        }
    }
}

#Preview {
    MatchesView()
}
