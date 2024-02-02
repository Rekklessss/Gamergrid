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
                .padding(.vertical, getRelativeHeight(20))
                .padding(.horizontal, 10)
                .background(ColorContants.TopTitleBar)
                
                Spacer()
                
                ScrollView(.vertical) {
//                  Loop tournaments
                    VStack(spacing: 0) {
//                      Tournament Title and info
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
                        
//                      Tournament Matches Info
                        VStack(){
//                          Loop Matches
                            HStack {
                                Spacer()
                                
//                              Team 1
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
                            
                        }
                        .foregroundColor(.white)
                        .padding(10)
                        .background(RoundedCorners(bottomLeft: 15, bottomRight: 15).fill(ColorContants.TournamentMatches))
                    }
                    
                    
                }
                .padding(.vertical, getRelativeHeight(30))
                .padding(.horizontal, getRelativeWidth(10))
            }
            
        }
    }
}

#Preview {
    MatchesView()
}
