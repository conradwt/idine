//
//  CheckoutView.swift
//  iDine
//
//  Created by Conrad Taylor on 7/30/22.
//  Copyright © 2022 Conrad Taylor. All rights reserved.
//

import SwiftUI

struct CheckoutView: View {
  @EnvironmentObject var order: Order
  @State private var paymentType = "Cash"
  @State private var addLoyaltyDetails = false
  @State private var loyaltyNumber = ""
  @State private var tipAmount = 15
  
  let paymentTypes = ["Cash", "Credit Card", "iDine Points"]
  let tipAmounts = [10, 15, 20, 25, 0]
  
  var body: some View {
    Form {
      Section {
        Picker("How do you want to pay?", selection: $paymentType) {
          ForEach(paymentTypes, id: \.self) {
            Text($0)
          }
        }
        
        Toggle("Add  iDine loyalty care", isOn: $addLoyaltyDetails.animation())
        
        if addLoyaltyDetails {
          TextField("Enter your iDine ID", text: $loyaltyNumber)
        }
      }
      
      Section(header: Text("Add a tip?")) {
        Picker("Percentage:", selection: $tipAmount) {
          ForEach(tipAmounts, id: \.self) {
            Text("\($0)")
          }
        }
        .pickerStyle(SegmentedPickerStyle())
      }
      
      Section(header: Text("TOTAL $100")) {
        Button("Confirm order") {
          // place the order
        }
      }
      
    }
    .navigationTitle("Payment")
    .navigationBarTitleDisplayMode(.inline)
  }
}

struct CheckoutView_Previews: PreviewProvider {
  static var previews: some View {
    CheckoutView()
      .environmentObject(Order())
  }
}
