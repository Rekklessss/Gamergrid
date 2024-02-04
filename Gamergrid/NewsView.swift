//
//  NewsView.swift
//  Gamergrid
//
//  Created by user2 on 02/02/24.
//

import SwiftUI

struct NewsView: View {
    
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
                    
            VStack {
                VStack {
                    HStack {
                        Text("News")
                            .font(.title)
                            .fontWeight(.bold)
                        
                        Spacer()
                    }
                    .padding(.vertical, getRelativeHeight(10))
                    .padding(.horizontal, getRelativeWidth(10))
                    
                    HStack {
                        Button(action: {}, label: {
                            Text("For You")
                                .font(.subheadline)
                                .fontWeight(.bold)
                        })
                        
                        Spacer()
                        
                        Button(action: {}, label: {
                            Text("Latest")
                                .font(.subheadline)
                                .fontWeight(.bold)
                        })
                        
                        Spacer()
                        
                        Button(action: {}, label: {
                            Text("Tournaments")
                                .font(.subheadline)
                                .fontWeight(.bold)
                        })
                    }
                    .padding(.horizontal)
                    .padding(.vertical, getRelativeHeight(10))
                }
                .background(ColorContants.TopTitleBar)
                .foregroundColor(.white)
                
                Spacer()
            }
        }
    }
}

#Preview {
    NewsView()
}
