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
      url: "https://moloco-ios-build.s3.amazonaws.com/moloco-sdk/MolocoSDK-4.8.0.zip",
      checksum: "3b6ec8550dfd89246a524f9f3b95db6b6d2b5b017998e5ccacf9dd2dbe83da85"
    )
  ]
)
