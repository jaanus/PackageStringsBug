@testable import Feature
import SnapshotTesting
import SwiftUI
import XCTest

final class FeatureViewTests: XCTestCase {
  func test_feature_view_en() {
    let sut = NavigationStack {
      FeatureView()
    }
    .frame(width: 393, height: 852)
    .environment(\.locale, Locale(identifier: ("en_US")))
    
    assertSnapshot(matching: sut, as: .image)
  }
  
  func test_feature_view_et() {
    let sut = NavigationStack {
      FeatureView()
    }
    .frame(width: 393, height: 852)
    .environment(\.locale, Locale(identifier: ("et_EE")))
    
    assertSnapshot(matching: sut, as: .image)
  }

}
