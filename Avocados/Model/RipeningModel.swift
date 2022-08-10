//
//  RipeningModel.swift
//  Avocados
//
//  Created by Abduqodir's MacPro on 2022/07/19.
//

import SwiftUI

struct Ripening: Identifiable {
  var id = UUID()
  var image: String
  var stage: String
  var title: String
  var description: String
  var ripeness: String
  var instruction: String
}
