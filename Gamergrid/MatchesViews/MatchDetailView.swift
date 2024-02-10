//
//  MatchDetailView.swift
//  Gamergrid
//
//  Created by user2 on 05/02/24.
//

import SwiftUI

struct MatchDetailView: View {
    @Environment(\.presentationMode) private var presentationMode: Binding<PresentationMode>
    
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            VStack {
                VStack {
                    HStack {
                        Spacer()
                        
                        VStack(spacing: getRelativeHeight(10)) {
                            
                            //Team1 Image
                            AsyncImage(url: URL(string: "https://picsum.photos/id/12/600")) { image in
                                image.resizable()
                            } placeholder: {
                                ProgressView()
                            }
                            .frame(width: getRelativeWidth(60), height: getRelativeHeight(60))
                            .clipShape(Circle())
                            
                            //Team 1
                            Text("Furia")
                                .font(.subheadline)
                        }
                        
                        Spacer()
                        
                        //Timings
                        VStack {
                            Text("07:30 PM")
                                .font(.title)
                                .fontWeight(.semibold)
                            
                            Text("Today")
                        }
                        
                        Spacer()
                        
                        VStack(spacing: getRelativeHeight(10))  {
                            
                            //Team1 Image
                            AsyncImage(url: URL(string: "https://picsum.photos/id/12/600")) { image in
                                image.resizable()
                            } placeholder: {
                                ProgressView()
                            }
                            .frame(width: getRelativeWidth(60), height: getRelativeHeight(60))
                            .clipShape(Circle())
                            
                            //Team 1
                            Text("Astralis")
                                .font(.subheadline)
                        }
                        
                        Spacer()
                    }
                    .padding(.vertical, getRelativeHeight(20))
                    
                    HStack(spacing: getRelativeWidth(20)){
                        Button(action: {}, label: {
                            Text("Preview")
                        })
                        
                        Button(action: {}, label: {
                            Text("Linup")
                        })
                        
                        Button(action: {}, label: {
                            Text("Table")
                        })
                        
                        Button(action: {}, label: {
                            Text("H2H")
                        })
                        
                        Spacer()
                    }
                    .fontWeight(.medium)
                    .padding(.horizontal)
                    .padding(.vertical, getRelativeHeight(20))
                    
                }
                .background(ColorContants.TopTitleBar)
                
                Spacer()
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
                
                ToolbarItem(placement: .topBarTrailing) {
                    Button(action: {
                        presentationMode.wrappedValue.dismiss()
                    }, label: {
                        Image(systemName: "square.and.arrow.up")
                            .accentColor(.white)
                    })
                }
            })
                
        }
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    MatchDetailView()
}
