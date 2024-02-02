//
//  GameSelectView.swift
//  Gamergrid
//
//  Created by user2 on 02/02/24.
//

import SwiftUI

struct GameSelectView: View {
    var body: some View {
            ZStack {
                Color.black
                    .ignoresSafeArea()
                
                VStack {
                    HStack {
                        Text("Select Games")
                            .font(.title)
                            .fontWeight(.bold)
                        Spacer()
                    }
                    .padding(.vertical, getRelativeHeight(20))
                    .padding(.horizontal, 10)
                    .background(ColorContants.TopTitleBar)
                    .foregroundColor(.white)
                    
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
                            
                            NavigationLink(destination: TeamSelectView()){
                                Text("Next")
                                    .padding(.vertical,getRelativeHeight(20))
                                    .padding(.horizontal, getRelativeWidth(50))
                                    .font(.title2)
                                    .fontWeight(.bold)
                                    .foregroundColor(.white)
                                    .multilineTextAlignment(.center)
                                    .background(RoundedCorners(topLeft: 16.0, topRight: 0,bottomLeft: 0, bottomRight: 0)
                                        .fill(.green))
                            }
                        }
                    }
                    .padding(.leading, 10)
                    .padding(.top, 20)
                    .background(ColorContants.TopTitleBar)
                    .foregroundColor(.white)
                }
                .ignoresSafeArea(.all, edges: [.bottom])
            }
        
    }
}

#Preview {
    GameSelectView()
}
