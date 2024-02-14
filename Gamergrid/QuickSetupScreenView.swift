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
                Image("MainBackground")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .edgesIgnoringSafeArea(.all)
                    .frame(minWidth: 0, maxWidth: .infinity)
                    .brightness(-0.4)
                VStack{
                    VStack {
                        Image("MainLogo")
                            .resizable()
                            .frame(width: getRelativeWidth(300.0),
                                   height: getRelativeHeight(70.0))
                            .scaledToFit()
                            .clipped()
                        
                        Text("News  ·  Live Scores  ·  Stats")
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(268.0), height: getRelativeHeight(21.0),
                                   alignment: .center)
                            .padding(.top, getRelativeHeight(9.0))
                            .padding(.horizontal, getRelativeWidth(29.0))
                    }
                    .padding(.top, getRelativeHeight(120))
                    
                    Spacer()
                    
                    NavigationLink(destination: GameSelectView()){
                        Text("Quick Setup")
                            .font(.title2)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .multilineTextAlignment(.center)
                            .frame(width: getRelativeWidth(325.0),height: getRelativeHeight(72.0), alignment: .center)
                            .background(RoundedCorners(topLeft: 16.0, topRight: 16.0,bottomLeft: 16.0, bottomRight: 16.0)
                                .fill(.green))
                    }
                    
                    Button(action: {}, label: {
                        Text("Already a user? Sign in")
                            .font(.subheadline)
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .foregroundColor(.white)
                            .padding(.top)
                            .padding(.bottom, getRelativeHeight(80))
                    })
                }
            }
        }
    }
}

#Preview {
    QuickSetupScreenView()
}
