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
      url: "https://moloco-ios-build.s3.amazonaws.com/moloco-sdk/MolocoSDK-4.7.0.zip",
      checksum: "da75389c69ab63e6fffbc4972ce6a8a8abe0e40343e218f54666526a17eb2fe2"
    )
  ]
)
