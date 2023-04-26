// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "Feature",
  defaultLocalization: "en",
  platforms: [.iOS(.v16)],
  products: [
    .library(
      name: "Feature",
      targets: ["Feature"]),
  ],
  dependencies: [
    .package(
      url: "https://github.com/pointfreeco/swift-snapshot-testing",
      from: "1.11.0"
    )
  ],
  targets: [
    .target(
      name: "Feature",
      dependencies: []),
    .testTarget(
      name: "FeatureTests",
      dependencies: [
        "Feature",
        .product(name: "SnapshotTesting", package: "swift-snapshot-testing")
      ]),
  ]
)
