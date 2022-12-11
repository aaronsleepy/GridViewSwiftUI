//
//  ContentView.swift
//  GridViewSwiftUI
//
//  Created by Aaron on 2022/12/10.
//

import SwiftUI

struct FrameworkListView: View {
    // Data
    @State var list: [AppleFramework] = AppleFramework.list
    
    // Layout
    let layout: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
    ]
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: layout) {
                    ForEach(list) { item in
                        FrameworkCell(framework: item)
                    }
                }
                .padding([.top, .leading, .trailing], 16.0)
            }
            .navigationTitle("☀️ Apple Framework")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkListView()
    }
}
