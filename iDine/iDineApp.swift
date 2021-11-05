//
//  iDineApp.swift
//  iDine
//
//  Created by ZHONGTAO REN on 5/11/21.
//

import SwiftUI

@main
struct iDineApp: App {
    @StateObject var order = Order()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(order)
        }
    }
}
