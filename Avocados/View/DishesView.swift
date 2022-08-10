//
//  DishesView.swift
//  Avocados
//
//  Created by Abduqodir's MacPro on 2022/07/15.
//

import SwiftUI

struct DishesView: View {
  var body: some View {
    HStack(alignment: .center, spacing: 4) {
      
      // 1st column
      VStack(alignment: .leading, spacing: 4) {
        HStack {
          Image("icon-toasts")
            .resizable()
            .modifier(IconModifier())
            Spacer()
          Text("Toasts")
        } // HStack 1
        Divider()
        HStack {
          Image("icon-tacos")
            .resizable()
            .modifier(IconModifier())
            Spacer()
          Text("Tacos")
        } // HStack 2
        Divider()
        HStack {
          Image("icon-salads")
            .resizable()
            .modifier(IconModifier())
            Spacer()
          Text("Salads")
        } // HStack 3
        Divider()
        HStack {
          Image("icon-halfavo")
            .resizable()
            .modifier(IconModifier())
            Spacer()
          Text("Spreads")
        } // HStack 4
      } //: VStack 1
      
      // 2nd column
      VStack(alignment: .center, spacing: 16) {
        HStack {
          Divider()
        }
        Image(systemName: "heart.circle")
          .font(Font.title.weight(.ultraLight))
          .imageScale(.large)
        
        HStack {
          Divider()
        }
      }
      
      
      // 3rd column
      VStack(alignment: .trailing, spacing: 4) {
        HStack {
          Text("Guacamole")
          Spacer()
          Image("icon-guacamole")
            .resizable()
            .modifier(IconModifier())
        } //: HStack 1
        Divider()
        HStack {
          Text("Sandwich")
          Spacer()
          Image("icon-sandwiches")
            .resizable()
            .modifier(IconModifier())
        } //: HStack 2
        Divider()
        HStack {
          Text("Soup")
          Spacer()
          Image("icon-soup")
            .resizable()
            .modifier(IconModifier())
        } //: HStack 3
        Divider()
        HStack {
          Text("Smoothie")
          Spacer()
          Image("icon-smoothies")
            .resizable()
            .modifier(IconModifier())
        } //: HStack 4
      } //: VStack
    } //: HStack (Outer)
    .font(.system(.callout, design: .serif))
    .foregroundColor(.gray)
    .padding(.horizontal)
    .frame(maxHeight: 220)
  }
}

struct IconModifier: ViewModifier {
  func body(content: Content) -> some View {
    content
      .frame(width: 42, height: 42, alignment: .center)
  }
}

struct DishesView_Previews: PreviewProvider {
  static var previews: some View {
    DishesView()
      .previewLayout(.fixed(width: 420, height: 280))
  }
}
