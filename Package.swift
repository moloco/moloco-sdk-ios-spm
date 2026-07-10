// swift-tools-version: 5.6
import PackageDescription

let package = Package(
  name: "MolocoSDK",
  platforms: [.iOS(.v12)],
  products: [
    .library(name: "MolocoSDK", targets: ["MolocoSDK"])
  ],
  targets: [
    .binaryTarget(
      name: "MolocoSDK",
      url: "https://moloco-ios-build.s3.amazonaws.com/moloco-sdk/MolocoSDK-4.8.1.zip",
      checksum: "aaa1eb4cc09e42f14745b81cc9b384632bf204d5bc14895a8d6a5f2a6de9c0c2"
    )
  ]
)
