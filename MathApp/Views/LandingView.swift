//
//  ContentView.swift
//  MathApp
//
//  Created by Sebastian on 2025-02-12.
//

import SwiftUI

struct LandingView: View {
    
    @State private var selectedTab: Int = 1
    
    var body: some View {
        
        TabView(selection: $selectedTab) {
            
            AdditionView()
                .tabItem {
                    Image(systemName: "plus")
                    Text("Addition")
                }
                .tag(1)

            SubtractionView()
                .tabItem {
                    Image(systemName: "minus")
                    Text("Subtraction")
                }
                .tag(2)
            
            MultiplicationView()
                .tabItem {
                    Image(systemName: "multiply")
                    Text("Multiplication")
                }
                .tag(3)
            
            DivisionView()
                .tabItem {
                    Image(systemName: "divide")
                    Text("Division")
                }
                .tag(4)
            
            SquareView()
                .tabItem {
                    Image(systemName: "2.square")
                    Text("Square")
                }
                .tag(5)
            
        }
    }
}

#Preview {
    LandingView()
}
