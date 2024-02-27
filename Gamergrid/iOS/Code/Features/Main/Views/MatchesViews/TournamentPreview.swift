//
//  MatchPreview.swift
//  Gamergrid
//
//  Created by user2 on 14/02/24.
//

import SwiftUI

struct TournamentPreview: View {
    var body: some View {
        ZStack {
            Color.black
                    .ignoresSafeArea()
            
            VStack(spacing: 0) {
                HStack(){
                    HStack(spacing: 20){
                        Text("Team")
                        
                        Spacer()
                        HStack(spacing: 10) {
                            Text("PL")
                            Text("GD")
                            Text("PTS")
                        }
                    }
                    .foregroundColor(.white)
                    .font(.subheadline)
                    .fontWeight(.bold)
                    .padding(.vertical,5)
                    
                    Spacer()
                    
                }
                .padding(.vertical ,getRelativeHeight(10))
                .padding(.horizontal, getRelativeWidth(20))
                .background(RoundedCorners(topLeft: 15, topRight: 15).fill(ColorContants.TournamentTitle))
                
                VStack {
                    ForEach(1..<8) { i in
                        HStack {
                            HStack(spacing:10){
                                Text("1")
                                
                                AsyncImage(url: URL(string: "https://picsum.photos/id/12/600")) { image in
                                    image.resizable()
                                } placeholder: {
                                    ProgressView()
                                }
                                .frame(width: getRelativeWidth(30), height: getRelativeHeight(30))
                                .clipShape(Circle())
                                
                                Text("Astralis")
                            }
                            
                            Spacer()
                            
                            HStack(spacing: 10) {
                                Text("19")
                                Text("+23")
                                Text("42x")
                            }
                        }
                        .foregroundColor(.white)
                        .font(.subheadline)
                        .fontWeight(.bold)
                        .padding(.vertical, getRelativeHeight(4))
                        .padding(.horizontal)
                    }
                    
                }
                .fontWeight(.semibold)
                .padding()
                .background(RoundedCorners(topLeft: 0,topRight: 0,bottomLeft: 15,bottomRight: 15).fill(ColorContants.TournamentMatches))
                
                Spacer()
            }
            .padding(.vertical)
        }
        .foregroundColor(.white)
    }
}

#Preview {
    TournamentPreview()
}
