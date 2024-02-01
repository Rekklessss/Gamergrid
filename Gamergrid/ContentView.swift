//
//  ContentView.swift
//  Gamergrid
//
//  Created by Divyanshu Pabia on 30/01/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("GamerGrid")
        }
        
        TabView {
                Text("Matches Screen")
                    .tabItem {
                        Image(systemName: "soccerball.inverse")
                        Text("Matches")
                }
                Text("News Screen")
                    .tabItem {
                        Image(systemName: "newspaper.fill")
                        Text("News")
                }
                Text("Trophy Screen")
                    .tabItem {
                        Image(systemName: "trophy.fill")
                        Text("Leagues")
                }
                Text("Favourites Screen")
                    .tabItem {
                        Image(systemName: "star.fill")
                        Text("Following")
                }
                Text("Settings Screen")
                    .tabItem {
                        Image(systemName: "line.3.horizontal")
                        Text("More")
                }
            }
    }
}

#Preview {
    ContentView()
}
