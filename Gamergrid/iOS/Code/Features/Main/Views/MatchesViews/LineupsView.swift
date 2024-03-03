//
//  MatchPreview.swift
//  Gamergrid
//
//  Created by user2 on 14/02/24.
//

import SwiftUI

struct LineupsView: View {
    var body: some View {
        ZStack {
            Color.black
                    .ignoresSafeArea()
            
            
            VStack(spacing: 20) {
                ForEach(1..<4) { i in
                    VStack(){
                        HStack(spacing: 20){
                            
                            
                            AsyncImage(url: URL(string: "https://picsum.photos/id/12/600")) { image in
                                image.resizable()
                            } placeholder: {
                                ProgressView()
                            }
                            .frame(width: getRelativeWidth(30), height: getRelativeHeight(30))
                            .clipShape(Circle())
                            
                            Text("Salah")
                            
                            Spacer()
                            
                            Text("Male")
                        }
                        .foregroundColor(.white)
                        .font(.subheadline)
                        .fontWeight(.bold)
                        .padding(.vertical,5)
                        
                        HStack(spacing: 20){
                            
                            Text("Salah Barakat")
                            
                            Spacer()
                            
                            Image(systemName: "birthday.cake.fill")
                                .resizable()
                                .frame(width: getRelativeWidth(20), height: getRelativeWidth(20))
                            
                            Text("29.09.1999")
                        }
                        .foregroundColor(.white)
                        .font(.subheadline)
                        .padding(.vertical,5)
                        
                    }
                    .padding(.vertical ,getRelativeHeight(10))
                    .padding(.horizontal, getRelativeWidth(20))
                    .background(RoundedCorners(topLeft: 5, topRight: 5, bottomLeft: 5, bottomRight: 5).fill(ColorContants.TournamentMatches))
                }
                
                Spacer()
            }
            .padding(.vertical)
        }
        .foregroundColor(.white)
    }
}

#Preview {
    LineupsView()
}
