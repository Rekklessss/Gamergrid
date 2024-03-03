//
//  QuickSetupScreenView.swift
//  Gamergrid
//
//  Created by user2 on 01/02/24.
//


import SwiftUI

struct QuickSetupScreenView: View {
    
    @StateObject var quickSetupScreenViewModel = QuickSetupScreenViewModel()
    
    var body: some View {
            NavigationStack {
                ZStack {
                    Color.background
                        .ignoresSafeArea()

                    VStack { 
                        
                        Image("MainLogo")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 300, height: 60) // Adjusted image size
                         
                        Text("News · Live Scores · Stats")
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .padding(.top, 10.0) // Fixed padding
                    
                        Spacer()

                        NavigationLink(destination: GameSelectView()) {
                            Text("Quick Setup")
                                .font(.title2)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .frame(width: 325, height: 72)
                                .background(RoundedRectangle(cornerRadius: 16)
                                            .fill(.green))
                                .padding(.bottom)
                            
                        }

                        Button("Already a user? Sign in") {
                            
                        }
                        .font(.subheadline)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding(.bottom, 30)
                    }
                    .padding(.vertical, 40)
                    
                }
            }
            
        }
    }

#Preview {
    QuickSetupScreenView()
}

