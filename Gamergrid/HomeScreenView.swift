//
//  HomeScreenView.swift
//  Gamergrid
//
//  Created by user2 on 01/02/24.
//

import SwiftUI

struct HomeScreenView: View {
    init() {
        UITabBar.appearance().unselectedItemTintColor = UIColor.white
        UITabBar.appearance().barTintColor = UIColor.black
    }
    
    var body: some View {
        
        ZStack {
            TabView {
                    MatchesView()
                        .tabItem {
                            Image(systemName: "soccerball.inverse")
                            Text("Matches")
                    }
                    NewsView()
                        .tabItem {
                            Image(systemName: "newspaper.fill")
                            Text("News")
                    }
                    LeaguesView()
                        .tabItem {
                            Image(systemName: "trophy.fill")
                            Text("Leagues")
                    }
                    FollowingView()
                        .tabItem {
                            Image(systemName: "star.fill")
                            Text("Following")
                    }
                    SettingsView()
                        .tabItem {
                            Image(systemName: "line.3.horizontal")
                            Text("More")
                    }
                }
            .accentColor(.green)
        }
        .navigationBarBackButtonHidden(true)
        
        
    }
}

#Preview {
    HomeScreenView()
}
