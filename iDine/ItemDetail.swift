//
// ItemDetail.swift
// iDine
//
// Created by Conrad Taylor on 7/26/22.
// Copyright © 2022 Conrad Taylor. All rights reserved.
//
    

import SwiftUI

struct ItemDetail: View {
  let item: MenuItem
  
    var body: some View {
      VStack {
        ZStack(alignment: .bottomTrailing) {
          Image(item.mainImage)
            .resizable()
            .scaledToFit()
          
          Text("Photo: \(item.photoCredit)")
            .padding(4)
            .background(Color.black)
            .font(.caption)
            .foregroundColor(.white)
            .offset(x: -5, y: -5)
        }
        
        Text(item.description)
          .padding()
        Spacer()
      }
      .navigationTitle(item.name)
      .navigationBarTitleDisplayMode(.inline)
    }
}

struct ItemDetail_Previews: PreviewProvider {
    static var previews: some View {
      NavigationView {
        ItemDetail(item: MenuItem.example)
      }
    }
}
