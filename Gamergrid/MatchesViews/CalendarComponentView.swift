//
//  CalendarComponentView.swift
//  Gamergrid
//
//  Created by user2 on 04/02/24.
//

import SwiftUI

struct CalendarComponentView: View {
    
    @Binding var showCalendarSheet: Bool
    
    var body: some View {
        ZStack {
            Color("TopTitleBar")
            
            VStack {
                HStack {
                    Text("Today")
                    
                    Spacer()
                    
                    Button(action: {showCalendarSheet.toggle()}, label: {
                        Text("Close")
                    })
                }
                .fontWeight(.bold)
                .font(.title2)
                .padding(.horizontal)
                .padding(.vertical,getRelativeHeight(20))
                
                Spacer()
            }
            
        }
        .foregroundColor(ColorContants.GreenGradient1)
        .presentationDetents([.height(getRelativeHeight(500)),.medium, .large])
        .ignoresSafeArea()
        .presentationDragIndicator(.hidden)
    }
}

#Preview {
    CalendarComponentView(showCalendarSheet: .constant(true))
}
