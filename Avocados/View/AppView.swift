//
//  AppView.swift
//  Avocados
//
//  Created by Abduqodir's MacPro on 2022/07/06.
//

import SwiftUI

struct AppView: View {
  var body: some View {
    TabView {
      AvocadosView()
        .tabItem {
          Image("tabicon-branch")
          Text("Avocados")
        }
      
      ContentView()
        .tabItem {
          Image("tabicon-book")
          Text("Recipes")
        }
      
      RipeningStagesView()
        .tabItem {
          Image("tabicon-avocado")
          Text("Ripening")
        }
      
      SettingsView()
        .tabItem {
          Image("tabicon-settings")
          Text("Settings")
        }
    } //: TabView
    .tint(.primary)
  }
}

struct AppView_Previews: PreviewProvider {
  static var previews: some View {
    AppView()
  }
}
