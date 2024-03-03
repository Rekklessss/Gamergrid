//
//  LeagueSelectView.swift
//  Gamergrid
//
//  Created by user2 on 02/02/24.
//

import SwiftUI
import QGrid

struct LeagueSelectView: View {
    @Environment(\.presentationMode) private var presentationMode: Binding<PresentationMode>
    @AppStorage("FollowingLeagues") var followingLeagues: FollowingItemsList = FollowingItemsList()
    @State private var searchText: String = ""
    @State private var selectedLeagues: [FollowingItem] = []

    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()

            VStack {
                VStack {
                    HStack {
                        Text("Select Leagues") // Update title
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

                QGrid(Leagues, columns: 3) { league in // Replace 'Games' with 'Leagues'
                    GridCell(item: league, selectedItems: $selectedLeagues, updateSelectedItems: { leagueToUpdate in
                        if let index = selectedLeagues.firstIndex(where: { $0.id == leagueToUpdate.id }) {
                            selectedLeagues.remove(at: index)
                        } else {
                            selectedLeagues.append(leagueToUpdate)
                        }
                    })
                }

                Spacer()

                VStack {
                    HStack {
                        Text("Following") //
                            .font(.title)
                            .fontWeight(.bold)
                        Spacer()
                    }

                    ScrollView(.horizontal) {
                        HStack {
                            ForEach(selectedLeagues) { league in
                                ZStack(alignment: .topTrailing) {
                                    Image(league.imgUrl)
                                        .resizable()
                                        .scaledToFit()
                                        .frame(height: 40)
                                        .padding(.trailing, 10)

                                    Button(action: {
                                        if let index = selectedLeagues.firstIndex(where: { $0.id == league.id }) {
                                            selectedLeagues.remove(at: index)
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
                        
                        NavigationLink(destination: HomeScreenView()) {
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
    LeagueSelectView()
}
