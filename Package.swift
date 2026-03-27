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
      url: "https://moloco-ios-build.s3.amazonaws.com/moloco-sdk/MolocoSDK-4.5.1.zip",
      checksum: "f52fda7bb7ed8199614228187bf2c0f2377e8d0e7f8f472f2e52eb1a4ab66cf5"
    )
  ]
)
