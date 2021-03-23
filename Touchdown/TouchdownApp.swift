//
//  TouchdownApp.swift
//  Touchdown
//
//  Created by Vladimir Sukanica on 9.2.21..
//

import SwiftUI

@main
struct TouchdownApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(Shop())
        }
    }
}
