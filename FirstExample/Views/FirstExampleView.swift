//
//  ContentView.swift
//  FirstExample
//
//  Created by temel gunaydin on 10.10.2024.
//

import SwiftUI

struct FirstExampleView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    FirstExampleView()
}
