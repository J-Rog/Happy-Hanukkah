//
//  ContentView.swift
//  Happy Hanukkah
//
//  Created by Jonathan Rogers on 12/26/24.
//

import SwiftUI
import RealityKit
import RealityKitContent
//Comment
struct ContentView: View {
    
    @EnvironmentObject private var candleSettings: CandleFeatures
    @Environment(\.openWindow) private var openWindow
    @Environment(\.dismissWindow) private var dismissWindow
    
    let num = ["1", "2", "3", "4", "5", "6", "7", "8"]
    @State private var selectedDay = "1"

    var body: some View {
        VStack {
            NavigationStack {
                Form {
                    Picker("What Night of Hanukkah is it?", selection: $selectedDay) {
                        ForEach(num, id: \.self) {
                            Text($0)
                        }
                    }
                }
            }
            
            Button("Open Menorah"){
                candleSettings.day=selectedDay
                openWindow(id: "Candles")
            }
            Button("Close Menorah"){
                dismissWindow(id: "Candles")
            }
        
        }
        .padding()
    }
}

#Preview(windowStyle: .automatic) {
    ContentView()
        .environment(AppModel())
        
}

class CandleFeatures:ObservableObject{
    @Published var day: String = "1"
}
