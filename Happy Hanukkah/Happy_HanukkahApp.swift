//
//  Happy_HanukkahApp.swift
//  Happy Hanukkah
//
//  Created by Jonathan Rogers on 12/26/24.
//

import SwiftUI

@main
struct Happy_HanukkahApp: App {

    @State private var appModel = AppModel()
    @StateObject private var candleSettings = CandleFeatures()


    var body: some Scene {
        WindowGroup {
            ContentView()
                .frame(
                    minWidth: 100, maxWidth: 400,
                    minHeight: 200, maxHeight: 300)
                .environmentObject(candleSettings)
        }.windowResizability(.contentSize)
        
        WindowGroup(id: "Candles"){
            CandleView()
                .environmentObject(candleSettings)
        }.windowStyle(.volumetric)
            .defaultSize(width: 0.45, height: 0.45, depth: 0.45, in: .meters)

     }
}
