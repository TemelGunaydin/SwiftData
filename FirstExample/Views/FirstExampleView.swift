//
//  ContentView.swift
//  FirstExample
//
//  Created by temel gunaydin on 10.10.2024.
//

import SwiftUI
import SwiftData

struct FirstExampleView: View {
    
    @Environment(\.modelContext) private var modelContext
    
    @Query private var people: [PersonModel]
    
    var body: some View {
        Button("Add Person") {
            let name = ["Mark","Lem","Chase"].randomElement()!
            let person = PersonModel(name: name)
            modelContext.insert(person)
        }
        List(people) { person in
            Text(person.name)
        }
        
        .font(.title)
        
        
    }
}
//We want to prevent compile errors when archiving our app.
#if DEBUG
#Preview {
    FirstExampleView()
        .modelContainer(for: PersonModel.self)
}
#endif
