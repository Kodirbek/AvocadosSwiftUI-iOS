//
//  FactModel.swift
//  Avocados
//
//  Created by Abduqodir's MacPro on 2022/07/17.
//

import SwiftUI

//MARK: - Fact Model

struct Fact: Identifiable {
  var id = UUID()
  var image: String
  var content: String
}
