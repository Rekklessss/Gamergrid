//
//  TeamSelectView.swift
//  Gamergrid
//
//  Created by user2 on 02/02/24.
//

import SwiftUI
import QGrid


struct TeamSelectView: View {
    @Environment(\.presentationMode) private var presentationMode: Binding<PresentationMode>
    @AppStorage("FollowingTeams") var followingTeams: FollowingItemsList = FollowingItemsList() 
    @State private var searchText: String = ""
    @State private var selectedTeams: [FollowingItem] = []

    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()

            VStack {
                VStack {
                    HStack {
                        Text("Select Teams") // Update title
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

                QGrid(Teams, columns: 3) { team in
                    GridCell(item: team, selectedItems: $selectedTeams, updateSelectedItems: { teamToUpdate in
                        if let index = selectedTeams.firstIndex(where: { $0.id == teamToUpdate.id }) {
                            selectedTeams.remove(at: index)
                        } else {
                            selectedTeams.append(teamToUpdate)
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
                            ForEach(selectedTeams) { team in
                                ZStack(alignment: .topTrailing) {
                                    Image(team.imgUrl)
                                        .resizable()
                                        .scaledToFit()
                                        .frame(height: 40)
                                        .padding(.trailing, 10)

                                    Button(action: {
                                        if let index = selectedTeams.firstIndex(where: { $0.id == team.id }) {
                                            selectedTeams.remove(at: index)
                                        }
                                    }) {
                                        Image(systemName: "xmark.circle.fill")
                                            .font(.caption)
                                            .foregroundColor(.red)
                                    }
                                }
                            }
                        }
                    }

                    HStack {
                        Spacer()
                        
                        NavigationLink(destination: LeagueSelectView()) {
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
    TeamSelectView()
}
