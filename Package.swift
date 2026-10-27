// swift-tools-version: 5.6
import PackageDescription

let package = Package(
  name: "MolocoSDK",
  platforms: [.iOS(.v12)],
  products: [
    .library(name: "MolocoSDK", targets: ["MolocoSDK"]),
    .library(name: "MolocoCustomAdapter", targets: ["MolocoCustomAdapterWrapper"])
  ],
  targets: [
    .binaryTarget(
      name: "MolocoSDK",
      url: "https://moloco-ios-build.s3.amazonaws.com/moloco-sdk/MolocoSDK-4.12.0.zip",
      checksum: "480906a1b66fce3c49cd4554fccae0fd142594b05169dff6615554ab47babe7c"
    ),
    .binaryTarget(
      name: "MolocoCustomAdapter",
      url: "https://moloco-ios-build.s3.amazonaws.com/moloco-sdk/MolocoCustomAdapter-4.12.0.0.zip",
      checksum: "44b6a71879a6ee915e663a3b76d0e117c0e531751b76c5eec24c55255eb86811"
    ),
    // A binary target cannot declare dependencies, so this target links the
    // custom adapter together with the MolocoSDK binary it is built against.
    .target(
      name: "MolocoCustomAdapterWrapper",
      dependencies: ["MolocoSDK", "MolocoCustomAdapter"]
    )
  ]
)
