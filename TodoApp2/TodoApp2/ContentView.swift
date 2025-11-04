//
//  ContentView.swift
//  TodoAppTask
//
//  Created by Gabriela Sanchez on 01/11/25.
//

import SwiftUI

struct ContentView: View {
    @State private var selection: String? = "homework"
    
    var body: some View {
        
        NavigationSplitView {
            Section("My Tasks"){
                List(selection: $selection) {
                    NavigationLink(value: "homework") {
                        Label("Homework SDGKU", systemImage: "square.and.pencil.circle.fill")
                    }
                    
                    NavigationLink(value: "groceries") {
                        Label("House Groceries", systemImage: "house.fill")
                    }
                }
                
                Section("Account") {
                    NavigationLink(value: "profile") {
                        Label("Gabriela Sanchez", systemImage: "person.crop.circle")
                    }
                }
            }
            .listStyle(.sidebar)
            .navigationTitle("My TODO Tracker App")
        } detail: {
            switch selection {
            case "homework":
                PlaceHolderView(title: "Homework SDGKU", icon: "books.vertical.fill")
                
            case "groceries":
                PlaceHolderView(title: "House Groceries", icon: "house.fill")
                
            case "profile":
                PlaceHolderView(title: "My Settings", icon: "person.crop.circle")
            
            default:
                ContentUnavailableView(
                    "Welcome",
                    systemImage:"checklist.unchecked",
                    description: Text("Select a group from the side bar to get started"))
            }
        }
    }
}
