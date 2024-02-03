//
//  LeagueSelectView.swift
//  Gamergrid
//
//  Created by user2 on 02/02/24.
//

import SwiftUI

struct LeagueSelectView: View {
    let names = ["Holly", "Josh", "Rhonda", "Ted"]
    @State private var searchText = ""
    
    var searchResults: [String] {
            if searchText.isEmpty {
                return names
            } else {
                return names.filter { $0.contains(searchText) }
            }
    }
    
    var body: some View {
            ZStack {
                Color.black
                    .ignoresSafeArea()
                
                VStack {
                    VStack {
                        HStack {
                            Text("Select Leagues")
                                .font(.title)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                            Spacer()
                        }
                        .padding(.vertical, getRelativeHeight(20))
                        .padding(.horizontal, 10)
                        .foregroundColor(.white)
                        
                        HStack {
                            Image(systemName:"magnifyingglass").foregroundColor(.white.opacity(0.5))
                                TextField("",text:$searchText,prompt:Text("Search")
                                    .foregroundColor(.white.opacity(0.5)))
                                    .font(Font.system(size: 15))
                                    .foregroundColor(.white)
                        }
                        .padding(7)
                        .cornerRadius(50)
                        .foregroundColor(.white)
                        .background(RoundedCorners(topLeft: 15,topRight: 15, bottomLeft: 15,bottomRight: 15).fill(ColorContants.SearchBarColor))
                        .padding(.horizontal)
                        .padding(.bottom)
                    }
                    .background(ColorContants.TopTitleBar)
                    
                    Spacer()
                    
                    VStack{
                        HStack {
                            Text("Following")
                                .font(.title)
                                .fontWeight(.bold)
                            Spacer()
                        }
                        
                        HStack{
                            Text("List")
                                .font(.title3)
                                .fontWeight(.bold)
                            Spacer()
                        }
                        
                        HStack {
                            Spacer()
                            
                            NavigationLink(destination: HomeScreenView()){
                                Text("Next")
                                    .padding(.vertical,getRelativeHeight(20))
                                    .padding(.horizontal, getRelativeWidth(50))
                                    .font(.title2)
                                    .fontWeight(.bold)
                                    .foregroundColor(.white)
                                    .multilineTextAlignment(.center)
                                    .background(RoundedCorners(topLeft: 15.0, topRight: 0,bottomLeft: 15.0, bottomRight: 0)
                                        .fill(.green))
                            }
                        }
                    }
                    .padding(.leading, 10)
                    .padding(.top, 20)
                    .background(ColorContants.TopTitleBar)
                    .foregroundColor(.white)
                }
            }
        
    }
}

#Preview {
    LeagueSelectView()
}
