//
//  MatchPreview.swift
//  Gamergrid
//
//  Created by user2 on 14/02/24.
//

import SwiftUI

struct MatchPreview: View {
    var body: some View {
        ZStack {
            Color.black
                    .ignoresSafeArea()
            
            VStack(spacing: 0) {
                HStack(){
                    HStack(spacing: 20){
                        AsyncImage(url: URL(string: "https://picsum.photos/id/12/600")) { image in
                            image.resizable()
                        } placeholder: {
                            ProgressView()
                        }
                        .frame(width: getRelativeWidth(30), height: getRelativeHeight(30))
                        .clipShape(Circle())
                        
                        Text("Roobet Cup 2023")
                            .foregroundColor(.white)
                            .font(.subheadline)
                            .fontWeight(.bold)
                    }
                    
                    Spacer()
                    
                    Button(action: {}, label: {
                        Image(systemName: "chevron.up")
                            .resizable()
                            .frame(width: getRelativeWidth(15), height: getRelativeWidth(10))
                    })
                }
                .padding(.vertical ,getRelativeHeight(10))
                .padding(.horizontal, getRelativeWidth(20))
                .background(RoundedCorners(topLeft: 15, topRight: 15).fill(ColorContants.TournamentTitle))
                
                VStack {
                    HStack {
                        Text("Discipline:")
                        
                        Spacer()
                        
                        Text("Game")
                    }
                    .padding(.vertical, getRelativeHeight(8))
                    .padding(.horizontal)
                    
                    HStack {
                        Text("Date:")
                        
                        Spacer()
                        
                        Text("Game")
                    }
                    .padding(.vertical, getRelativeHeight(8))
                    .padding(.horizontal)
                    
                    HStack {
                        Text("Prize Pool:")
                        
                        Spacer()
                        
                        Text("Game")
                    }
                    .padding(.vertical, getRelativeHeight(8))
                    .padding(.horizontal)
                    
                    HStack {
                        Text("Series:")
                        
                        Spacer()
                        
                        Text("Game")
                    }
                    .padding(.vertical, getRelativeHeight(8))
                    .padding(.horizontal)
                    
                    HStack {
                        Text("Type:")
                        
                        Spacer()
                        
                        Text("Game")
                    }
                    .padding(.vertical, getRelativeHeight(8))
                    .padding(.horizontal)
                    
                    HStack {
                        Text("Organisers:")
                        
                        Spacer()
                        
                        Text("Game")
                    }
                    .padding(.vertical, getRelativeHeight(8))
                    .padding(.horizontal)
                    
                    HStack {
                        Text("Sponsors")
                        
                        Spacer()
                        
                        Text("Game")
                    }
                    .padding(.vertical, getRelativeHeight(8))
                    .padding(.horizontal)
                    
                }
                .fontWeight(.semibold)
                .padding()
                .background(RoundedCorners(topLeft: 0,topRight: 0,bottomLeft: 15,bottomRight: 15).fill(ColorContants.TournamentMatches))
            }
            .padding(.vertical)
        }
        .foregroundColor(.white)
    }
}

#Preview {
    MatchPreview()
}
