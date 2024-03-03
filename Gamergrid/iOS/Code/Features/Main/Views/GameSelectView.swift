//
//  GameSelectView.swift
//  Gamergrid
//
//  Created by user2 on 02/02/24.
//

import SwiftUI
import QGrid



struct GameSelectView: View {
    @Environment(\.presentationMode) private var presentationMode: Binding<PresentationMode>
    @AppStorage("FollowingGames") var followingGames: FollowingItemsList = FollowingItemsList()
    @State private var searchText: String = ""
    @State private var selectedGames: [FollowingItem] = []

    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            
            VStack {
                VStack {
                    HStack {
                        Text("Select Games")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                        Spacer()
                    }
                    .padding(.vertical, 20)
                    .padding(.horizontal, 10)
                    .foregroundColor(.white)
                    
                    HStack {
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.white.opacity(0.5))
                        TextField("", text: $searchText, prompt: Text("Search")
                            .foregroundColor(.white.opacity(0.5)))
                            .font(.system(size: 15))
                            .foregroundColor(.white)
                    }
                    .padding(7)
                    .cornerRadius(50)
                    .foregroundColor(.white)
                    .background(RoundedCorners(topLeft: 15, topRight: 15, bottomLeft: 15, bottomRight: 15)
                        .fill(ColorContants.SearchBarColor))
                    .padding(.horizontal)
                    .padding(.bottom)
                }
                .background(ColorContants.TopTitleBar)
                
                Spacer()
                
                QGrid(Games, columns: 3) { game in
                                    GridCell(item: game, selectedItems: $selectedGames, updateSelectedItems: { gameToUpdate in
                                        if let index = selectedGames.firstIndex(where: { $0.id == gameToUpdate.id }) {
                                            selectedGames.remove(at: index)
                                        } else {
                                            selectedGames.append(gameToUpdate)
                                        }
                                    })
                                }
                
                Spacer()
                
                VStack {
                    HStack {
                        Text("Following")
                            .font(.title)
                            .fontWeight(.bold)
                        Spacer()
                    }
                    
                    ScrollView(.horizontal) {
                        HStack {
                            ForEach(selectedGames) { game in
                                ZStack(alignment: .topTrailing) { // Add ZStack
                                    Image(game.imgUrl)
                                        .resizable()
                                        .scaledToFit()
                                        .frame(height: 40)
                                        .padding(.trailing, 10)

                                    Button(action: {
                                        if let index = selectedGames.firstIndex(where: { $0.id == game.id }) {
                                            selectedGames.remove(at: index)
                                        }
                                    }) {
                                        Image(systemName: "xmark.circle.fill")
                                            .font(.caption)
                                            .foregroundColor(.red) // Customize as needed
                                    }
                                }
                            }
                        }
                    }
                    
                    
                    HStack {
                        Spacer()
                        
                        NavigationLink(destination: TeamSelectView()) {
                            Text("Next")
                                .padding(.vertical, 20)
                                .padding(.horizontal, 40)
                                .font(.title2)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .multilineTextAlignment(.center)
                                .background(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                                    .fill(.green))
                        }
                    }
                }
                .padding(.leading, 10)
                .padding(.top, 20)
                .background(ColorContants.TopTitleBar)
                .foregroundColor(.white)
            }
            .foregroundColor(.white)
            .toolbar(content: {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: {
                        presentationMode.wrappedValue.dismiss()
                    }, label: {
                        Image(systemName: "chevron.left")
                            .accentColor(.white)
                            
                            
                    })
                }
            })
        }
        .navigationBarBackButtonHidden()

    }
    
    }
        
    

#Preview {
    GameSelectView()
}
