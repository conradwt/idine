//
//  ContentView.swift
//  iDine
//
//  Created by Conrad Taylor on 7/24/22.
//  Copyright © 2022 Conrad Taylor. All rights reserved.
//

import SwiftUI

struct ContentView: View {
  let menu = Bundle.main.decode([MenuSection].self, from: "menu.json")
  
  var body: some View {
    NavigationView {
      List {
        ForEach(menu) { section in
          Section(header: Text(section.name)) {
            ForEach(section.items) { item in
              NavigationLink(destination: ItemDetail(item: item)) {
                ItemRow(item: item)
              }
            }
          }
        }
      }
      .navigationTitle("Menu")
      .listStyle(GroupedListStyle())
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
