//
//  SettingsView.swift
//  Avocados
//
//  Created by Abduqodir's MacPro on 2022/07/06.
//

import SwiftUI

struct SettingsView: View {
  
  @State private var enableNotifications: Bool = true
  @State private var backgroundRefresh: Bool = false
  
  var body: some View {
    VStack(alignment: .center, spacing: 0) {
      
      //MARK: - Header
      VStack(alignment: .center, spacing: 5) {
        Image("avocado")
          .resizable()
          .scaledToFit()
          .padding(.top)
          .frame(width: 100, height: 100, alignment: .center)
          .shadow(color: Color("ColorBlackTransparentLight"), radius: 8, x: 0, y: 4)
        
        Text("Avocados".uppercased())
          .font(.system(.title, design: .serif))
          .fontWeight(.bold)
          .foregroundColor(Color("ColorGreenAdaptive"))
      } //: VStack
      .padding()
      
      Form {
        //MARK: - Section #1
        Section {
          Toggle("Enable notifications", isOn: $enableNotifications)
          Toggle("Background refresh", isOn: $backgroundRefresh)
        } header: {
          Text("General Settings")
        }
        
        //MARK: - Section #2
        Section {
          if enableNotifications {
            HStack {
              Text("Product")
              Spacer()
              Text("Avocados")
            }
            HStack {
              Text("Compatibility")
              Spacer()
              Text("iPhone & iPad")
            }
            HStack {
              Text("Developer")
              Spacer()
              Text("Kodirbek Khamzaev")
            }
            HStack {
              Text("Version")
              Spacer()
              Text("1.0.0")
            }
          } else {
            HStack {
              Text("Personal message")
                .foregroundColor(.gray)
              Spacer()
              Text("Happy Coding 👍")
            }
          }
          
        } header: {
          Text("Application")
        }

      } //: Form
    } //: VStack
    .frame(maxWidth: 640)
  }
}

struct SettingsView_Previews: PreviewProvider {
  static var previews: some View {
    SettingsView()
  }
}
