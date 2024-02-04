//
//  MatchesView.swift
//  Gamergrid
//
//  Created by user2 on 02/02/24.
//

import SwiftUI

struct MatchesView: View {
    @State public var showCalendarSheet = false
    @State public var isOngoing = false
    @State public var isSearching = false
    
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
                        Button(action: {isOngoing.toggle()}, label: {
                            Image(systemName: isOngoing ? "clock.fill" : "clock")
                                .resizable()
                                .frame(width: getRelativeWidth(25), height: getRelativeWidth(25))
                        })
                        
                        Button(action: {}, label: {
                            Image(systemName: "magnifyingglass")
                                .resizable()
                                .frame(width: getRelativeWidth(25), height: getRelativeWidth(25))
                        })
                        
                        Button(action: {showCalendarSheet.toggle()}, label: {
                            Image(systemName: "calendar")
                                .resizable()
                                .frame(width: getRelativeWidth(25), height: 
                                        getRelativeWidth(25))
                        })
                        .sheet(isPresented: $showCalendarSheet) {
                            CalendarComponentView(showCalendarSheet: $showCalendarSheet)
                        }
                    }
                }
                .padding(.vertical, getRelativeHeight(20))
                .padding(.horizontal, 10)
                .background(ColorContants.TopTitleBar)
                
                Spacer()
                
                ScrollView(.vertical) {

                    if (isOngoing) {
                        Text("Following")
                            .font(.headline)
                            .fontWeight(.bold)
                            .padding(.top)
                    } else {
                        // Latest News
                        HStack {
                            
                            VStack(alignment: .leading, spacing: 25) {
                                Text("CSGO World Championship 2023")
                                    .font(.headline)
                                    .multilineTextAlignment(.leading)
                                    .fontWeight(.heavy)
                                
                                Text("YesterDay, 06:30 PM")
                                    .font(.subheadline)
                                    .multilineTextAlignment(.leading)
                                    .fontWeight(.medium)
                            }
                            .padding(30)
                            .frame(width: getRelativeWidth(250))
                            
                            Spacer()
                            
                            AsyncImage(url: URL(string: "https://picsum.photos/id/12/600")) { image in
                                image.resizable()
                            } placeholder: {
                                ProgressView()
                            }
                            .frame(width: getRelativeWidth(30), height: getRelativeHeight(30))
                            .padding(.horizontal,20)
                            
                        }
                        .background(RoundedCorners(topLeft: 15,topRight: 15, bottomLeft: 15,bottomRight: 15).fill(
                            LinearGradient(gradient: Gradient(colors: [ColorContants.GreenGradient1,ColorContants.GreenGradient2,ColorContants.GreenGradient3]),startPoint: .leading,endPoint: .trailing)))
                        .padding(.vertical, getRelativeHeight(10))
                    }
                    
                    ForEach(1..<4) { i in
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
                                        .fontWeight(.bold)
                                }
                                
                                Spacer()
                                
                                Button(action: {}, label: {
                                    Image(systemName: "chevron.down")
                                        .resizable()
                                        .frame(width: getRelativeWidth(15), height: getRelativeWidth(10))
                                })
                            }
                            .padding(.vertical ,getRelativeHeight(10))
                            .padding(.horizontal, getRelativeWidth(20))
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
                                        
                                        //Team1 Image
                                        AsyncImage(url: URL(string: "https://picsum.photos/id/12/600")) { image in
                                            image.resizable()
                                        } placeholder: {
                                            ProgressView()
                                        }
                                        .frame(width: getRelativeWidth(30), height: getRelativeHeight(30))
                                        .clipShape(Circle())
                                        
                                        Spacer()
                                        
                                        //Timings
                                        VStack {
                                            Text("07:30")
                                            Text("PM")
                                        }
                                        .font(.subheadline)
                                        
                                        
                                        Spacer()
                                        
                                        //Team 2 Image
                                        AsyncImage(url: URL(string: "https://picsum.photos/id/12/600")) { image in
                                            image.resizable()
                                        } placeholder: {
                                            ProgressView()
                                        }
                                        .frame(width: getRelativeWidth(30), height: getRelativeHeight(30))
                                        .clipShape(Circle())
                                        
                                        Spacer()
                                        
                                        //Team 2
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
                        .fontWeight(.semibold)
                        .padding(.vertical, 10)
                    }
                                        
                    
                }
                .foregroundColor(.white)
                .padding(.horizontal, getRelativeWidth(10))
            }
            
        }
    }
}

#Preview {
    MatchesView()
}
