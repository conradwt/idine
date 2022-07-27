//
//  iDineApp.swift
//  iDine
//
//  Created by Conrad Taylor on 7/24/22.
//  Copyright © 2022 Conrad Taylor. All rights reserved.
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
