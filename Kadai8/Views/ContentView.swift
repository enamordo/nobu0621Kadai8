//
//  ContentView.swift
//  Kadai8
//
//  Created by nobu0621 on 2024/09/01.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedTag = 1
    @State private var selectedValue = 0.0
    
    var body: some View {
        TabView(selection: $selectedTag) {
            TabPageView(
                selectedValue: $selectedValue,
                color: Color.pink
            )
            .tabItem { Text("item 1") }
            .tag(1)
            TabPageView(
                selectedValue: $selectedValue,
                color: Color.green
            )
            .tabItem { Text("item 2") }
            .tag(2)
        }
    }
}

#Preview {
    ContentView()
}
