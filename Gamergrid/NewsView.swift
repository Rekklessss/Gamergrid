//
//  NewsView.swift
//  Gamergrid
//
//  Created by user2 on 02/02/24.
//

import SwiftUI

struct NewsView: View {
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
                    
            Text("This is News view")
                .foregroundColor(.white)
        }
    }
}

#Preview {
    NewsView()
}
