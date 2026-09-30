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
      url: "https://moloco-ios-build.s3.amazonaws.com/moloco-sdk/MolocoSDK-4.11.0.zip",
      checksum: "84f7b2a1227a2d7f149a2d24dbf9740791fae456108046fa0062758f9393a3b4"
    )
  ]
)
