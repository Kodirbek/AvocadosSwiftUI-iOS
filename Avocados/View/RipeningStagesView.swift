//
//  RipeningStagesView.swift
//  Avocados
//
//  Created by Abduqodir's MacPro on 2022/07/06.
//

import SwiftUI

struct RipeningStagesView: View {
  
  var ripeningStages: [Ripening] = ripeningData
  
  var body: some View {
    ScrollView(.horizontal, showsIndicators: false) {
      VStack {
        Spacer()
        HStack(alignment: .center, spacing: 25) {
          ForEach(ripeningStages) { item in
            RipeningView(ripening: item)
          } //: LOOP
        } //: HStack
        .padding(.vertical)
        .padding(.horizontal, 25)
        Spacer()
      } //: VStack
    } //: Scroll
    .edgesIgnoringSafeArea(.all)
  }
}

struct RipeningStagesView_Previews: PreviewProvider {
  static var previews: some View {
    RipeningStagesView(ripeningStages: ripeningData)
  }
}
