//
//  ContentView.swift
//  PSY240
//
//  Created by Atharva Rao on 3/27/24.
//

import SwiftUI

struct ConceptView: View {
    let concept: String
    let definition: String
    let application: String
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(concept)
                .font(.title)
            Divider()
            Text("Definition: \(definition)")
                .padding(.bottom)
            Text("Application: \(application)")
        }
        .padding()
    }
}

struct ContentView: View {
    @State private var isSidebarCollapsed = false
    
    var body: some View {
        NavigationView {
            // Sidebar
            List {
                NavigationLink(destination: ConceptView(concept: "Hindsight Bias",
                                                        definition: "‘knew-it-all-along’ phenomenon that people convince themselves that they predicted an event after it has already happened",
                                                        application: "")) {
                    Text("Ch 1")
                }
                NavigationLink(destination: ConceptView(concept: "Planning Fallacy",
                                                        definition: "‘knew-it-all-along’ phenomenon that people convince themselves that they predicted an event after it has already happened",
                                                        application: "")) {
                    Text("Ch 2")
                }
                NavigationLink(destination: ConceptView(concept: "Overconfidence Phenomenon",
                                                        definition: "‘knew-it-all-along’ phenomenon that people convince themselves that they predicted an event after it has already happened",
                                                        application: "")) {
                    Text("Ch 3")
                }
                NavigationLink(destination: ConceptView(concept: 
                    "Role",
                                                        definition: "‘knew-it-all-along’ phenomenon that people convince themselves that they predicted an event after it has already happened",
                                                        application: "")) {
                    Text("Ch 4")
                }
                NavigationLink(destination: ConceptView(concept: "Norms",
                                                        definition: "‘knew-it-all-along’ phenomenon that people convince themselves that they predicted an event after it has already happened",
                                                        application: "")) {
                    Text("Ch 5")
                }
                NavigationLink(destination: ConceptView(concept: "Compliance",
                                                        definition: "‘knew-it-all-along’ phenomenon that people convince themselves that they predicted an event after it has already happened",
                                                        application: "")) {
                    Text("Ch 6")
                }
                NavigationLink(destination: ConceptView(concept: "Recency Effect",
                                                        definition: "‘knew-it-all-along’ phenomenon that people convince themselves that they predicted an event after it has already happened",
                                                        application: "")) {
                    Text("Ch 7")
                }
                NavigationLink(destination: ConceptView(concept: "Group Polarization",
                                                        definition: "‘knew-it-all-along’ phenomenon that people convince themselves that they predicted an event after it has already happened",
                                                        application: "")) {
                    Text("Ch 8")
                }
                NavigationLink(destination: ConceptView(concept: "Prejudice",
                                                        definition: "‘knew-it-all-along’ phenomenon that people convince themselves that they predicted an event after it has already happened",
                                                        application: "")) {
                    Text("Ch 9")
                }
                NavigationLink(destination: ConceptView(concept: "Social Learning",
                                                        definition: "‘knew-it-all-along’ phenomenon that people convince themselves that they predicted an event after it has already happened",
                                                        application: "")) {
                    Text("Ch 10")
                }
                NavigationLink(destination: ConceptView(concept: "Complementarity",
                                                        definition: "‘knew-it-all-along’ phenomenon that people convince themselves that they predicted an event after it has already happened",
                                                        application: "")) {
                    Text("Ch 11")
                }
                NavigationLink(destination: ConceptView(concept: "o    Bystander Effect",
                                                        definition: "‘knew-it-all-along’ phenomenon that people convince themselves that they predicted an event after it has already happened",
                                                        application: "")) {
                    Text("Ch 12")
                }
                NavigationLink(destination: ConceptView(concept: "Mirror-Image Perceptions",
                                                        definition: "‘knew-it-all-along’ phenomenon that people convince themselves that they predicted an event after it has already happened",
                                                        application: "")) {
                    Text("Ch 13")
                }
                // Add more menu items as needed
            }
            .listStyle(SidebarListStyle())
            
            
            // Main content
            VStack {
                Button(action: {
                    withAnimation {
                        isSidebarCollapsed.toggle()
                    }
                }) {
                    Image(systemName: isSidebarCollapsed ? "chevron.right" : "chevron.left")
                        .imageScale(.large)
                        .foregroundColor(.accentColor)
                }
                .padding()
                
                // Your main content here
                Text("Hello, world!")
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
        .navigationViewStyle(DoubleColumnNavigationViewStyle())
    }
}

#Preview {
    ContentView()
}
