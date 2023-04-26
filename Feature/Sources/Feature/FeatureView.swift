import SwiftUI

public struct FeatureView: View {
  public init() {}
  
  public var body: some View {
    Text("feature_hello_world", bundle: .module)
      .navigationTitle(
        NSLocalizedString(
          "feature_navigation_title",
          bundle: .module,
          comment: ""
        )
      )
  }
}

struct FeatureView_Previews: PreviewProvider {
  static var previews: some View {
    NavigationStack {
      FeatureView()
    }
    .previewDisplayName("English")

    NavigationStack {
      FeatureView()
    }
    .environment(\.locale, Locale(identifier: "et-EE"))
    .previewDisplayName("Estonian")
  }
}
