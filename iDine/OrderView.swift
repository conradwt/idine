//
//  OrderView.swift
//  iDine
//
//  Created by Conrad Taylor on 7/26/22.
//  Copyright © 2022 Conrad Taylor. All rights reserved.
//

import SwiftUI

struct OrderView: View {
  @EnvironmentObject var order: Order
  
  var body: some View {
    NavigationView {
      List {
        Section {
          ForEach(order.items) { item in
            HStack {
              Text(item.name)
              Spacer()
              Text("$\(item.price)")
            }
          }
        }
        
        Section {
          NavigationLink(destination: CheckoutView()) {
            Text("Place Order")
          }
        }
        
      }
      .navigationTitle("Order")
      .listStyle(InsetGroupedListStyle())
    }
  }
}

struct OrderView_Previews: PreviewProvider {
  static var previews: some View {
    OrderView()
      .environmentObject(Order())
  }
}
