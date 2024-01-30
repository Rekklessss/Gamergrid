//
//  HomeScreenView.swift
//  Gamergrid
//
//  Created by user2 on 30/01/24.
//

import SwiftUI

struct HomeScreenView: View {
    var body: some View {
        NavigationView(content: {
            VStack(){
                // Top Nav bar
                HStack(){
                    Image("MainLogo")
                        .resizable()
                        .frame(width: getRelativeWidth(145.0),
                               height: getRelativeHeight(32.0), alignment: .center)
                        .scaledToFit()
                        .clipped()
                    Spacer()
                    HStack(){
                        Button(action: {}, label: {
                            Text("S")
                        })
                        Button(action: {}, label: {
                            Text("S")
                                .foregroundColor(Color.red)
                        })
                        Button(action: {}, label: {
                            Text("S")
                        })
                    }
                }
                .padding(.top, 20.0)
                .padding(.bottom, 20.0)
                .padding(.horizontal, 10.0)
                .background(.black)
                
                Spacer()
                
                NavigationLink(destination: Text("Do Somethin")) {Text("Do Something")}
                
                Spacer()
                
                // Bottom Navbar
                VStack(alignment: .leading, spacing: 0) {
                    HStack(alignment:.center, spacing: 0) {
                        NavigationLink(destination: Text("Do Somethin")) {
                            Text("Test")
                                .foregroundColor(.white)
                        }
                        Spacer()
                        NavigationLink(destination: Text("Do Somethin")) {
                            Text("􀊫")
                                .foregroundColor(.white)
                        }
                        Spacer()
                        NavigationLink(destination: Text("Do Somethin")) {
                            Text("Test")
                                .foregroundColor(.white)
                        }
                        Spacer()
                        NavigationLink(destination: Text("Do Somethin")) {
                            Text("Test")
                                .foregroundColor(.white)
                        }
                        Spacer()
                        NavigationLink(destination: ContentView()) {
                            Label("", systemImage: "magnifyingglass")
                        }
                        
                    }
                    
                }
                .padding(.top,20.0)
                .padding(.horizontal, 20.0)
            }
            .background(.black)
        })
        
    }
}

#Preview {
    HomeScreenView()
}
