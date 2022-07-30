//
//  MainView.swift
//  iDine
//
//  Created by Conrad Taylor on 7/30/22.
//  Copyright © 2022 Conrad Taylor. All rights reserved.
//

import SwiftUI

struct MainView: View {
    var body: some View {
      TabView {
        ContentView()
          .tabItem {
            Label("Order", systemImage: "list.dash")
          }
        
        OrderView()
          .tabItem {
            Label("Order", systemImage: "square.and.pencil")
          }
      }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
          .environmentObject(Order())
    }
}
