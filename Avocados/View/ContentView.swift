//
//  ContentView.swift
//  Avocados
//
//  Created by Abduqodir's MacPro on 2022/07/06.
//

import SwiftUI

struct ContentView: View {
  //MARK: - Properties
  
  var headers: [Header] = headersData
  var facts: [Fact] = factsData
  var recipes: [Recipe] = recipesData
  
  //MARK: - Body
  var body: some View {
    //MARK: - Header
    ScrollView(.vertical, showsIndicators: false) {
      VStack(alignment: .center, spacing: 20) {
        ScrollView(.horizontal, showsIndicators: false) {
          HStack(alignment: .top, spacing: 0) {
            ForEach(headers) { item in
              HeaderView(header: item)
            } //: Loop
          } //: HStack
        } //: Scroll
        
        //MARK: - Dishes
        
        Text("Avocado Dishes")
          .fontWeight(.bold)
          .modifier(TitleModifier())
        
        DishesView()
          .frame(maxWidth: 640)
        
        //MARK: - Avocado Facts
        
        Text("Avocado Facts")
          .fontWeight(.bold)
          .modifier(TitleModifier())
        
        ScrollView(.horizontal, showsIndicators: false) {
          HStack(alignment: .top, spacing: 60) {
            ForEach(facts) {item in
              FactsView(fact: item)
            } //: Loop
          } //: HStack
          .padding(.vertical)
          .padding(.leading, 60)
          .padding(.trailing, 20)
        } //: Scroll
        
        //MARK: - Recipe Cards
        
        Text("Avocado Recipes")
          .fontWeight(.bold)
          .modifier(TitleModifier())
        
          VStack(alignment: .center, spacing: 20) {
            ForEach(recipes) {item in
              RecipeCardView(recipe: item)
            } //: Loop
          } //: HStack
          .frame(maxWidth: 640)
          .padding(.horizontal)
        
        //MARK: - Footer
        
        VStack(alignment: .center, spacing: 20) {
          Text("All About Avocados")
            .fontWeight(.bold)
            .modifier(TitleModifier())
          
          Text("Everything you wanted to know about avocados but were too afraid to ask.")
            .font(.system(.body, design: .serif))
            .multilineTextAlignment(.center)
            .foregroundColor(.gray)
            .frame(minHeight: 60)
        } //: VStack(inner)
        .frame(maxWidth: 640)
        .padding()
        .padding(.bottom, 85)
      } //: VStack(outer)
    } //: Scroll
    .edgesIgnoringSafeArea(.all)
    .padding(0)
  }
}

struct TitleModifier: ViewModifier {
  func body(content: Content) -> some View {
    content
      .font(.system(.title, design: .serif))
      .foregroundColor(Color("ColorGreenAdaptive"))
      .padding(8)
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView(headers: headersData, facts: factsData, recipes: recipesData)
      .preferredColorScheme(.light)
  }
}
