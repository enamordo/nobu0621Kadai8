//
//  TabPageView.swift
//  Kadai8
//
//  Created by nobu0621 on 2024/09/01.
//

import SwiftUI

struct TabPageView: View {
    @Binding var selectedValue: Double
    let color: Color

    var body: some View {
        ZStack {
            color.ignoresSafeArea(edges: [.top])
            VStack(spacing: 20) {
                Text(String(selectedValue))
                    .font(.title)
                Slider(value: $selectedValue)
                Spacer()
            }
            .padding()
        }
    }
}

struct TabPageView_Previews: PreviewProvider {
    static var previews: some View {
        TabPageView(
            selectedValue: Binding.constant(0.0),
            color: Color.blue
        )
    }
}
