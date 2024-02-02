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
        NavigationView {
            ZStack {
                Image("MainBackground")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .edgesIgnoringSafeArea(.all)
                    .frame(minWidth: 0, maxWidth: .infinity)
                    .brightness(-0.2)
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
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(268.0), height: getRelativeHeight(21.0),
                                   alignment: .center)
                            .padding(.top, getRelativeHeight(9.0))
                            .padding(.horizontal, getRelativeWidth(29.0))
                    }
                    .padding(.top, getRelativeHeight(120))
                    
                    Spacer()
                    
                    Button(action: {}, label: {
                        Text("Quick Setup")
                            .font(.title2)
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .foregroundColor(.white)
                            .multilineTextAlignment(.center)
                            .frame(width: getRelativeWidth(325.0),height: getRelativeHeight(72.0), alignment: .center)
                            .background(RoundedCorners(topLeft: 16.0, topRight: 16.0,bottomLeft: 16.0, bottomRight: 16.0)
                                .fill(.green))
                    })
                    .foregroundColor(.white)
                    .padding(.bottom, getRelativeHeight(80))
                }
            }
        }
    }
}

#Preview {
    QuickSetupScreenView()
}
