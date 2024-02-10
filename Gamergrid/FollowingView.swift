//
//  FollowingView.swift
//  Gamergrid
//
//  Created by user2 on 02/02/24.
//

import SwiftUI

struct FollowingView: View {
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
                    
            VStack {
                VStack {
                    HStack {
                        Text("Following")
                            .font(.title)
                            .fontWeight(.bold)
                        
                        Spacer()
                    }
                    .padding(.vertical, getRelativeHeight(10))
                    .padding(.horizontal, getRelativeWidth(10))
                    
                    HStack(spacing: 20) {
                        Button(action: {}, label: {
                            Text("Teams")
                        })
                        
                        Button(action: {}, label: {
                            Text("Games")
                        })
                        
                        Spacer()
                        
                    }
                    .fontWeight(.medium)
                    .padding(.horizontal)
                    .padding(.vertical, getRelativeHeight(20))
                }
                .background(ColorContants.TopTitleBar)
                .foregroundColor(.white)
                
                Spacer()
            }
        }
    }
}

#Preview {
    FollowingView()
}
