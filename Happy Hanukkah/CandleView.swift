//
//  CandleView.swift
//  Happy Hanukkah
//
//  Created by Jonathan Rogers on 12/30/24.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct CandleView: View {
    @EnvironmentObject private var candleSettings: CandleFeatures
    var body: some View {
        VStack{
            RealityView { content in
                    // Add the initial RealityKit content
                    if let scene = try? await Entity(named: "Scene", in:
                                                        realityKitContentBundle) {
                        if candleSettings.day == "1" {
                            let Candle_2 = scene.findEntity(named: "Candle_2")
                            Candle_2?.isEnabled=false
                            let Candle_3 = scene.findEntity(named: "Candle_3")
                            Candle_3?.isEnabled=false
                            let Candle_4 = scene.findEntity(named: "Candle_4")
                            Candle_4?.isEnabled=false
                            let Candle_5 = scene.findEntity(named: "Candle_5")
                            Candle_5?.isEnabled=false
                            let Candle_6 = scene.findEntity(named: "Candle_6")
                            Candle_6?.isEnabled=false
                            let Candle_7 = scene.findEntity(named: "Candle_7")
                            Candle_7?.isEnabled=false
                            let Candle_8 = scene.findEntity(named: "Candle_8")
                            Candle_8?.isEnabled=false
                        }
                        if candleSettings.day == "2" {
                            let Candle_3 = scene.findEntity(named: "Candle_3")
                            Candle_3?.isEnabled=false
                            let Candle_4 = scene.findEntity(named: "Candle_4")
                            Candle_4?.isEnabled=false
                            let Candle_5 = scene.findEntity(named: "Candle_5")
                            Candle_5?.isEnabled=false
                            let Candle_6 = scene.findEntity(named: "Candle_6")
                            Candle_6?.isEnabled=false
                            let Candle_7 = scene.findEntity(named: "Candle_7")
                            Candle_7?.isEnabled=false
                            let Candle_8 = scene.findEntity(named: "Candle_8")
                            Candle_8?.isEnabled=false
                        }
                        if candleSettings.day == "3" {
                            let Candle_4 = scene.findEntity(named: "Candle_4")
                            Candle_4?.isEnabled=false
                            let Candle_5 = scene.findEntity(named: "Candle_5")
                            Candle_5?.isEnabled=false
                            let Candle_6 = scene.findEntity(named: "Candle_6")
                            Candle_6?.isEnabled=false
                            let Candle_7 = scene.findEntity(named: "Candle_7")
                            Candle_7?.isEnabled=false
                            let Candle_8 = scene.findEntity(named: "Candle_8")
                            Candle_8?.isEnabled=false
                        }
                        if candleSettings.day == "4" {
                            let Candle_5 = scene.findEntity(named: "Candle_5")
                            Candle_5?.isEnabled=false
                            let Candle_6 = scene.findEntity(named: "Candle_6")
                            Candle_6?.isEnabled=false
                            let Candle_7 = scene.findEntity(named: "Candle_7")
                            Candle_7?.isEnabled=false
                            let Candle_8 = scene.findEntity(named: "Candle_8")
                            Candle_8?.isEnabled=false
                        }
                        if candleSettings.day == "5" {
                            let Candle_6 = scene.findEntity(named: "Candle_6")
                            Candle_6?.isEnabled=false
                            let Candle_7 = scene.findEntity(named: "Candle_7")
                            Candle_7?.isEnabled=false
                            let Candle_8 = scene.findEntity(named: "Candle_8")
                            Candle_8?.isEnabled=false
                        }
                        if candleSettings.day == "6" {
                            let Candle_7 = scene.findEntity(named: "Candle_7")
                            Candle_7?.isEnabled=false
                            let Candle_8 = scene.findEntity(named: "Candle_8")
                            Candle_8?.isEnabled=false
                        }
                        if candleSettings.day == "7" {
                            let Candle_8 = scene.findEntity(named: "Candle_8")
                            Candle_8?.isEnabled=false
                        }
                        
                        
                        content.add(scene)
                    }
            } update: { content in
                   // Update the content
            }
        }
    }
}

#Preview {
    CandleView()
        .environmentObject(CandleFeatures())
}
