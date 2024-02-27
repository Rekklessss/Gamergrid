//
//  MatchesListView.swift
//  Gamergrid
//
//  Created by user2 on 04/02/24.
//

import SwiftUI

struct MatchesListView: View {
    var body: some View {
        ZStack {
            
            ForEach(1..<10) { i in
                //Loop tournaments
                
                VStack(spacing: 0) {
                    //Tournament Title and info
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
                        }
                        
                        Spacer()
                        
                        Button(action: {}, label: {
                            Image(systemName: "chevron.down")
                                .resizable()
                                .frame(width: getRelativeWidth(25), height: getRelativeWidth(15))
                        })
                    }
                    .padding(10)
                    .background(RoundedCorners(topLeft: 15, topRight: 15).fill(ColorContants.TournamentTitle))
                    
                    //Tournament Matches Info
                    VStack(){
                        //Loop Matches
                        ForEach(1..<3) { j in
                            HStack {
                                Spacer()
                                
                                //Team 1
                                Text("Furia")
                                    .font(.subheadline)
                                
                                Spacer()
                                
                                //                              Team1 Image
                                AsyncImage(url: URL(string: "https://picsum.photos/id/12/600")) { image in
                                    image.resizable()
                                } placeholder: {
                                    ProgressView()
                                }
                                .frame(width: getRelativeWidth(30), height: getRelativeHeight(30))
                                .clipShape(Circle())
                                
                                Spacer()
                                
                                //                              Timings
                                VStack {
                                    Text("07:30")
                                    Text("PM")
                                }
                                .font(.subheadline)
                                
                                
                                Spacer()
                                
                                //                              Team 2 Image
                                AsyncImage(url: URL(string: "https://picsum.photos/id/12/600")) { image in
                                    image.resizable()
                                } placeholder: {
                                    ProgressView()
                                }
                                .frame(width: getRelativeWidth(30), height: getRelativeHeight(30))
                                .clipShape(Circle())
                                
                                Spacer()
                                
                                //                              Team 2
                                Text("Astralis")
                                    .font(.subheadline)
                                
                                Spacer()
                            }
                            .padding(.vertical, 5)
                        }
                        
                    }
                    .padding(10)
                    .background(RoundedCorners(bottomLeft: 15, bottomRight: 15).fill(ColorContants.TournamentMatches))
                }
                .padding(.vertical, 10)
            }
        }
    }
}

#Preview {
    MatchesListView()
}
