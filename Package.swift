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
      url: "https://github.com/moloco/moloco-sdk-ios/releases/download/v4.5.0/MolocoSDK-4.5.0.zip",
      checksum: "d9fbdc7102461bdc810fe2ac8f3e6aa07780ea1b4aebdc852e9aec16ca607528"
    )
  ]
)
