//
//  RecipeCardView.swift
//  Avocados
//
//  Created by Abduqodir's MacPro on 2022/07/17.
//

import SwiftUI

struct RecipeCardView: View {
  
  //MARK: - Properties
  
  var recipe: Recipe
  var hapticImpact = UIImpactFeedbackGenerator(style: .heavy)
  @State private var showModal: Bool = false
  
  //MARK: - Body
  var body: some View {
    VStack(alignment: .leading, spacing: 0) {
      
      // Card Image
      Image(recipe.image)
        .resizable()
        .scaledToFit()
        .overlay {
          HStack {
            Spacer()
            VStack {
              Image(systemName: "bookmark")
                .font(Font.title.weight(.light))
                .foregroundColor(.white)
                .imageScale(.small)
                .shadow(color: Color("ColorBlackTransparentLight"), radius: 2, x: 0, y: 0)
                .padding(.trailing, 20)
                .padding(.top, 22)
              Spacer()
            } //: VStack
          } //: HStack
        } //: overlay
      
      VStack(alignment: .leading, spacing: 12) {
        // Title
        Text(recipe.title)
          .font(.system(.title, design: .serif))
          .fontWeight(.bold)
          .foregroundColor(Color("ColorGreenMedium"))
          .lineLimit(1)
        
        // Headline
        Text(recipe.headline)
          .font(.system(.body, design: .serif))
          .foregroundColor(.gray)
          .italic()
        
        // Rating
        RecipeRatingView(recipe: recipe)
        
        // Cooking
        RecipeCookingView(recipe: recipe)
        
      } //: VStack
      .padding()
      .padding(.bottom, 12)
    } //: VStack
    .background(.white)
    .cornerRadius(12)
    .shadow(color: Color("ColorBlackTransparentLight"), radius: 8, x: 0, y: 0)
    .onTapGesture {
      hapticImpact.impactOccurred()
      showModal = true
    }
    .sheet(isPresented: $showModal) {
      RecipeDetailView(recipe: recipe)
    }
  }
}

//MARK: - Preview
struct RecipeCardView_Previews: PreviewProvider {
  static var previews: some View {
    RecipeCardView(recipe: recipesData[0])
      .previewLayout(.sizeThatFits)
  }
}
