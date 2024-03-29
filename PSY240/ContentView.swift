//
//  ContentView.swift
//  PSY240
//
//  Created by Atharva Rao on 3/27/24.
//

import SwiftUI

struct ConceptView: View {
    let ch: String
    let concept: String
    let definition: String
    let application: String
    let images: [String]
    let captions: [String]
    @State private var currentIndex: Int = 0
    @State private var scrollToIndex: Int?
    
    var body: some View {
        VStack() {
            Text(ch)
                .font(.title)
                .padding(.bottom, 10)
            Text(concept)
                .font(.headline)
            Divider()
            Text("Definition: \(definition)")
                .padding(.bottom)
            Text("Application: \(application)")
                .padding(.bottom)
            Image(images[currentIndex])
                .resizable()
                .scaledToFit()
                .frame(maxHeight: 200)
            .padding(.horizontal)
            HStack {
                Button(action: {
                    currentIndex = max(currentIndex - 1, 0)
                    scrollToIndex = currentIndex
                }) {
                    Image(systemName: "arrow.left.circle.fill")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .foregroundColor(currentIndex > 0 ? .blue : .gray)
                }
                
                Spacer()
                Text("Image \(currentIndex + 1) of \(images.count)")
                Spacer()
                Button(action: {
                    currentIndex = min(currentIndex + 1, images.count - 1)
                    scrollToIndex = currentIndex
                }) {
                    Image(systemName: "arrow.right.circle.fill")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .foregroundColor(currentIndex < images.count - 1 ? .blue : .gray)
                }
            }
            .padding()
            Text(captions[currentIndex])
            .padding(.horizontal)
        }
        .padding()
    }
}


struct ContentView: View {
    @State private var isSidebarCollapsed = false
    
    var body: some View {
        
        VStack {
            NavigationView {
                List {
                    NavigationLink(destination: ConceptView(ch: "Ch 1",
                        concept: "Hindsight Bias",
                                                            definition: "‘knew-it-all-along’ phenomenon that people convince themselves that they predicted an event after it has already happened",
                                                            application: "", 
                                                            images: ["ch1-0.5", "ch1-1", "ch1-2", "ch1-3", "ch1-4", "ch1-5"],
                                                            captions: ["Team principal presses tactics button, to call the car in for an early pitstop", "Team prepares for a pitstop", "Team performs the pitstop", "Car leaves the pitlane", "Team wins the race with the strategy having paid off", "Team debriefs with the early pitstop call being the accurate strategy after conclusion of the race"])) {
                        Text("Ch 1")
                    }
                    NavigationLink(destination: ConceptView(ch: "Ch 2", concept: "Planning Fallacy",
                                                            definition: "Tendency to be too optimistic about the time required to complete something",
                                                            application: "", images: ["ch2-1", "ch2-2", "ch2-3", "ch2-4"], captions: ["Team discusses design ideas for next season's car", "Engineers start designing the car", "Engineers underestimated time required to design a certain part", "Car was not completed in time and the team will miss the first race of the season"])) {
                        Text("Ch 2")
                    }
                    NavigationLink(destination: ConceptView(ch: "Ch 3", concept: "Overconfidence Phenomenon",
                                                            definition: "Tendency to be more confident than correct to overestimate the accuracy of one’s beliefs",
                                                            application: "", images: ["ch3-1", "ch3-2", "ch3-3"], captions: ["Car closing in on the car in front", "Car takes the inside line, thinking he can make a successful overtake", "Failed overtake, causing this driver to crash into the other driver"])) {
                        Text("Ch 3")
                    }
                    NavigationLink(destination: ConceptView(ch: "Ch 4", concept:
                        "Cognitive Dissonance",
                                                            definition: "A state of having inconsistent thoughts, beliefs, or attitudes, especially as relating to behavioral decisions and attitude change",
                                                            application: "", images: ["ch4-1", "ch4-2", "ch4-3"], captions: ["Car 77 is in 1st place, ahead of Car 44", "Team calls for Car 77 to let Car 44 pass and win the race since driver of Car 44 was leading the championship", "Conflicting feelings from driver 77 (left) who was a team player but lost the race"])) {
                        Text("Ch 4")
                    }
                    NavigationLink(destination: ConceptView(ch: "Ch 5", concept: "Aggression",
                                                            definition: "Physical or verbal behavior intended to hurt someone",
                                                            application: "", images: ["ch5"], captions: ["Driver on right crashed into driver on the left."])) {
                        Text("Ch 5")
                    }
                    NavigationLink(destination: ConceptView(ch: "Ch 6", concept: "Compliance",
                                                            definition: "Conformity that involves publicly acting in accord with an implied or explicit request while privately disagreeing",
                                                            application: "", images: ["ch6-1", "ch6-2", "ch6-3"], captions: ["2019 Mercedes F1 Car", "2020 Racing Point F1 Car", "Racing Point copied major aspects of the 2019 Mercedes car even though many of their engineers had a different intended concept, producing a fast car"])) {
                        Text("Ch 6")
                    }
                    NavigationLink(destination: ConceptView(ch: "Ch 7", concept: "Foot-in-the-door Phenomenon",
                                                            definition: "Tendency for people who have first agreed to a small request to comply with a larger request",
                                                            application: "", images: ["ch7-1"], captions: ["F1 funded a Netflix series about the sport, which was a small amount of work for people to watch. Caused increased viewership and attendance at F1 races, driving up revenue"])) {
                        Text("Ch 7")
                    }
                    NavigationLink(destination: ConceptView(ch: "Ch 8", concept: "Leadership",
                                                            definition: "Process by which certain group members motivate and guide the group",
                                                            application: "", images: ["ch8-1"], captions: ["Toto Wolff, team principal of Mercedes, giving a motivational speech to his team"])) {
                        Text("Ch 8")
                    }
                    NavigationLink(destination: ConceptView(ch: "Ch 9", concept: "Social Identity",
                                                            definition: "Refers to an individual's sense of belonging to a particular group and the emotional significance attached to that group membership",
                                                            application: "", images: ["ch9-1"], captions: ["Italian fans (tifosi) supporting their team, Ferrari, at the Italian GP"])) {
                        Text("Ch 9")
                    }
                    NavigationLink(destination: ConceptView(ch: "Ch 10", concept: "Social Learning",
                                                            definition: "Theory that we learn social behavior by observing and imitating and by being rewarded and punished",
                                                            application: "", images: [""], captions: [""])) {
                        Text("Ch 10")
                    }
                    NavigationLink(destination: ConceptView(ch: "Ch 11", concept: "Complementarity",
                                                            definition: "Popularity supposed tendency, in a relationship between two people, for each to compete what is missing in the other",
                                                            application: "", images: [""], captions: [""])) {
                        Text("Ch 11")
                    }
                    NavigationLink(destination: ConceptView(ch: "Ch 12", concept: "Bystander Effect",
                                                            definition: "Finding that a person is less likely to provide help when there are other bystanders",
                                                            application: "", images: [""], captions: [""])) {
                        Text("Ch 12")
                    }
                    NavigationLink(destination: ConceptView(ch: "Ch 13", concept: "Mirror-Image Perceptions",
                                                            definition: "Reciprocal views of each other often held by parties in conflict",
                                                            application: "", images: [""], captions: [""])) {
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
}

#Preview {
    ContentView()
}
