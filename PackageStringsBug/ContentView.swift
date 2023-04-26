//
//  ContentView.swift
//  PackageStringsBug
//
//  Created by Jaanus Kase on 26.04.2023.
//

import SwiftUI
import Feature

struct ContentView: View {
  var body: some View {
    NavigationStack {
      VStack {
        Image(systemName: "globe")
          .imageScale(.large)
          .foregroundColor(.accentColor)
        Text("hello_world")
        NavigationLink(
          destination: {
            FeatureView()
          }, label: {
            Text("button")
          })
      }
      // Navigation title is incorrect in SwiftUI et-EE preview.
      // Even if you set the locale to et-EE, the string comes from English localization.
      .navigationTitle(NSLocalizedString("navigation_title", comment: ""))
      .padding()
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    // English preview in app target. Works correctly.
    ContentView()
      .previewDisplayName("English")
    
    // Estonian preview in app target.
    // Page content is correct, page title is incorrect.
    ContentView()
      .environment(\.locale, Locale(identifier: "et-EE"))
      .previewDisplayName("Estonian")
  }
}
